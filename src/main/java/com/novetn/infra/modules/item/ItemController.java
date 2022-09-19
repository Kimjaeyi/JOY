package com.novetn.infra.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.novetn.infra.modules.member.MemberServiceImpl;

@Controller
@RequestMapping(value = "/item/")

public class ItemController {

	@Autowired
	MemberServiceImpl service;
	
	public void setSearchAndPaging(ItemVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
	}
	
	@RequestMapping(value = "itemList")
	public String memberList(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Item> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShDelNy() : " + vo.getShDelNy());
		
		return "infra/member/xdmin/itemList";
	}
	
	@RequestMapping(value = "itemForm")
	public String memberForm(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Item result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/member/xdmin/itemForm";
	}
	
	@RequestMapping(value = "itemInst")
	public String memberInst(Item vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "itemUele")
	public String memberUele(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemList";
	}
	
	@RequestMapping(value = "itemDele")
	public String memberDele(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemList";
	}
	
}
