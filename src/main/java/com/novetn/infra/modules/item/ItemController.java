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

		Item item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		//이미지 가져오기
		dto.setPseq(vo.getSeq());
//		
		List<Item> listimg = service.selectUploadedimg(vo);
		model.addAttribute("listimg", listimg);
		
//		Item imageUploaded = service.imageUploaded(dto); 
//		Item img = service.imageUploaded(vo);
//		model.addAttribute("img", img);
		
		return "infra/item/xdmin/itemForm";
	}

	@RequestMapping(value = "itemInst")
	public String itemInst(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		service.insertUploaded(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/item/itemForm";
	}
	
	/* @SuppressWarnings(value = { "all" }) */
	@RequestMapping(value = "itemUpdt")
	public String itemUpdt(ItemVo vo, Item dto, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("파일 크기: "+dto.getImagefile().length);
		
		dto.setPseq(vo.getSeq());
		
		service.update(dto);
		service.updateUploaded(dto);
		
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
	public String mainPage(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		List<Item> listHotdealwmp = service.selectHotdealwmp(vo); 
		model.addAttribute("listHotdealwmp", listHotdealwmp);
		
		List<Item> listHotdealtmon = service.selectHotdealtmon(vo);
		model.addAttribute("listHotdealtmon", listHotdealtmon);
		
		List<Item> listHotdeal11st = service.selectHotdeal11st(vo);
		model.addAttribute("listHotdeal11st", listHotdeal11st);
		
		List<Item> listBest = service.selectBestlist(vo);
		model.addAttribute("listBest", listBest);
		
		return "infra/item/user/mainPage";
		
	}
	
	@RequestMapping(value = "mainSearch")
	public String itemSearch(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		List<Item> listHotdealwmp = service.selectHotdealwmp(vo); 
		model.addAttribute("listHotdealwmp", listHotdealwmp);
		
		List<Item> listHotdealtmon = service.selectHotdealtmon(vo);
		model.addAttribute("listHotdealtmon", listHotdealtmon);
		
		List<Item> listHotdeal11st = service.selectHotdeal11st(vo);
		model.addAttribute("listHotdeal11st", listHotdeal11st);
		
		List<Item> listBest = service.selectBestlist(vo);
		model.addAttribute("listBest", listBest);
		
		return "infra/item/user/mainSearch";
		
	}
	
	@RequestMapping(value = "itemView")
	public String itemView(@ModelAttribute("vo") ItemVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		
//		Item detail = service.selectItemView(vo);
//		model.addAttribute("detail", detail);
		
		List<Item> card = service.selectView(vo); 
		//단일로(list 지우삼)
		model.addAttribute("card", card);
		
		List<Item> tab = service.selectSection(vo); 
		//단일로
		model.addAttribute("tab", tab);
		
		return "infra/item/user/itemView";
		
	}
	
}
