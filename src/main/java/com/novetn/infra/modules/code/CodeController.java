package com.novetn.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/code/")

public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	public void setSearchAndPaging(CodeVo vo) throws Exception {
		
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
//		vo.setShstartDate(vo.getShstartDate() == null || vo.getShstartDate() == "2021-08-31" ? null : vo.getShstartDate());
//		vo.setShendDate(vo.getShendDate() == null || vo.getShendDate() == "now()" ? null : vo.getShendDate());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
	}
	
	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShDelNy() : " + vo.getShDelNy());

		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
//		if (vo.getMainKey().equals("0") || vo.getMainKey().equals("")) {
//			// insert
//		} else {
//			Code item = service.selectOne(vo);
//			model.addAttribute("item", item);
//		}
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		List<Code> add = service.codeGroupNameAdd(vo);
		model.addAttribute("add", add);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
//		if (Constants.INSERT_AFTER_TYPE == 1) {
//			return "redirect:/code/codeForm";
//		} else {
//			return "redirect:/code/codeList";
//		}
//		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String codeDele(@ModelAttribute("vo") CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeList";
	}
	
//	only for Member
//	@RequestMapping(value = "codeView")
//	public String codeView(CodeVo vo, Model model) throws Exception {
//		
//		Code result = service.selectOne(vo);
//		
//		model.addAttribute("item", result);
//		
//		return "infra/code/xdmin/codeForm";
//	}
	
}
