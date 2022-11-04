package com.novetn.infra.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/order/")

public class OrderController {

	@Autowired
	OrderServiceImpl service;
	
	public void setSearchAndPaging(OrderVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
	}
	
	@RequestMapping(value = "orderList")
	public String orderList(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Order> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShDelNy() : " + vo.getShDelNy());
		
		return "infra/order/xdmin/orderList";
	}
	
	@RequestMapping(value = "orderForm")
	public String orderForm(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Order result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/order/xdmin/orderForm";
	}
	
	@RequestMapping(value = "orderInst")
	public String orderInst(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception {
		
//		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderForm";
	}
	
	/* @SuppressWarnings(value = { "all" }) */
	@RequestMapping(value = "orderUpdt")
	public String orderUpdt(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception {
		
//		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderForm";
	}
	
	@RequestMapping(value = "orderUele")
	public String orderUele(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderList";
	}
	
	
	@RequestMapping(value = "orderDele")
	public String orderDele(OrderVo vo, Order dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/order/orderList";
	}
	
	@RequestMapping(value = "orderpage")
	public String payment(@ModelAttribute("vo") OrderVo vo, Model model) throws Exception {
		
		Order user = service.selectOne(vo);
		model.addAttribute("user", user);
		
		List<Order> list = service.couponList(vo);
		model.addAttribute("list", list);
		
		return "infra/order/user/orderpage";
		
	}
	
	@RequestMapping(value = "paysuccess")
	public String paysuccess() throws Exception {
		
		return "infra/order/user/paysuccess";
		
	}
	
	@RequestMapping(value = "orderdetail")
	public String orderdetail() throws Exception {
		
		return "infra/order/user/orderdetail";
		
	}
	
}
