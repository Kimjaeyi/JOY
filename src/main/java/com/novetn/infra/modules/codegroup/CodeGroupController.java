package com.novetn.infra.modules.codegroup;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {

		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShDelNy() : " + vo.getShDelNy());
		System.out.println(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		System.out.println(vo.getShstartDate() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShstartDate());
		System.out.println(vo.getShendDate() == null ? UtilDateTime.nowString() : vo.getShendDate());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(Model model) throws Exception {
		
		return "infra/codegroup/xdmin/codeGroupForm";
		
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
}
