package com.novetn.infra.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/item/")

public class ItemController {

	@Autowired
	ItemServiceImpl service;
	
	public void setSearchAndPaging(ItemVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
	}
	
	@RequestMapping(value = "itemList")
	public String itemList(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Item> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShDelNy() : " + vo.getShDelNy());
		
		return "infra/item/xdmin/itemList";
	}
	
	@RequestMapping(value = "itemForm")
	public String itemForm(@ModelAttribute("vo") ItemVo vo, Item dto, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Item result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		//이미지 파일 업로드
		dto.setPseq(vo.getSeq());
		Item imageUploaded = service.imageUploaded(dto);
		model.addAttribute("img", imageUploaded);
		
		return "infra/item/xdmin/itemForm";
	}
	
	@RequestMapping(value = "itemInst")
	public String itemInst(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemForm";
	}
	
	/* @SuppressWarnings(value = { "all" }) */
	@RequestMapping(value = "itemUpdt")
	public String itemUpdt(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("파일 크기:"+dto.getImagefile().length);
		
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemForm";
	}
	
	@RequestMapping(value = "itemUele")
	public String itemUele(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemList";
	}
	
	@RequestMapping(value = "itemDele")
	public String itemDele(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemList";
	}
	
	@RequestMapping(value = "mainPage")
	public String mainPage() throws Exception {
		
		return "infra/item/user/mainPage";
		
	}
	
	@RequestMapping(value = "itemView")
	public String itemView() throws Exception {
		
		return "infra/item/user/itemView";
		
	}
	
	@RequestMapping(value = "payment")
	public String payment() throws Exception {
		
		return "infra/order/user/payment";
		
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
