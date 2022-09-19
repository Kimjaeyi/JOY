package com.novetn.infra.modules.codegroup;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")

public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;

	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
			
	//		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
	//		vo.setShstartDate(vo.getShstartDate() == null || vo.getShstartDate() == "2021-08-31" ? null : vo.getShstartDate());
	//		vo.setShendDate(vo.getShendDate() == null || vo.getShendDate() == "now()" ? null : vo.getShendDate());
			
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
	}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {

		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShDelNy() : " + vo.getShDelNy());
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
//		if (Constants.INSERT_AFTER_TYPE == 1) {
//			return "redirect:/code/codeForm";
//		} else {
//			return "redirect:/code/codeList";
//		}
//		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	only for Member
//	@RequestMapping(value = "codeGroupView")
//	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
//		
//		CodeGroup result = service.selectOne(vo);
//		
//		model.addAttribute("item", result);
//		
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}
	
}
