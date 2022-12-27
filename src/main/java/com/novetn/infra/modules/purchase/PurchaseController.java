package com.novetn.infra.modules.purchase;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.novetn.infra.modules.order.Order;

@Controller
@RequestMapping(value = "/purchase/")
@SessionAttributes({"dtoPay", "tid"}) //dto, tid를 세션에 올림
public class PurchaseController {

	@Autowired
	PurchaseServiceImpl Service;
	
	@ModelAttribute("dtoPay")
	public Purchase setEmptyPurchase() { //빈 dto를 만들어줘야 세션 오류 안남
		return new Purchase();
	}
	
	//카카오페이
	@ResponseBody
	@RequestMapping(value = "kakaopayReady")
	public KakopayReady payReady (@ModelAttribue("dtoPay") Purchase dto, Model model) throws Exception {
		
		KakaopayReady kakaopayReady = service.payReady(dto);
		model.addAttribute("tid", kakaopayReady.getTid());

		return kakaopayReady;
		
	}
	
	@RequestMapping(value="kakaopayApproval")
	public String payCompleted(@RequestParam("pg_token") String pgToken, @ModelAttribute("tid") String tid,  @ModelAttribute("dtoPay") Purchase dto, Model model, HttpSession httpSession, Order dto1) throws Exception {
		
		// 카카오 결제 요청하기
		KakaoPayApproval kakaoPayApproval = service.payApprove(tid, pgToken, dto);
		
		//return된 객체를 map에 매핑
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.convertValue(kakaoPayApproval, Map.class);
		
		for(String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}
		
		Map<String, Object> amount = new HashMap<String, Object>();
		amount = (Map<String, Object>) map.get("amount");
		
		for (String key : amount.keySet()) {
			String value = String.valueOf(amount.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}

		//결제 후 db에 insert
		//dto 에 받아온 정보 set
		dto.setTitle(map.get("item_name").toString());
		dto.setSeq(map.get("item_code").toString());
		dto.setFinalPrice(amount.get("total").toString());

		dto.setSeq((String)httpSession.getAttribute("sessSeq"));
		Purchase purchase = (Purchase) httpSession.getAttribute("dtoPay");
		
		//결제 정보 insert
		service.insertPurchase(dto);
		dto.setSeq(dto.getSeq());
		
		Purchase result = service.selectListAfterPay(dto);
		model.addAttribute("result", result);
			
		return "infra/purchase/user/purchaseResult";
	}
	
	// 결제 취소시 실행 url 
	@GetMapping("kakaopayCancel")
	public String payCancel() {
		
		return "redirect:/order/orderpage";
		
	}
    
	// 결제 실패시 실행 url    	
	@GetMapping("kakaopayFail")
	public String payFail() {
		
		return "redirect:/order/orderpage";
		
	}
}
