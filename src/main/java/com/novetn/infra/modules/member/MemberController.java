package com.novetn.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/member/")

public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	public void setSearchAndPaging(MemberVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
	}
	
	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShDelNy() : " + vo.getShDelNy());
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(Member vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "memberUele")
	public String memberUele(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberDele")
	public String memberDele(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	@ResponseBody
	@RequestMapping(value = "idCheck")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@RequestMapping(value = "managerLogin")
	public String managerLogin() throws Exception {
		
		return "infra/member/xdmin/managerLogin";
		
	}
	
	@RequestMapping(value = "userLogin")
	public String userLogin() throws Exception {
		
		return "infra/member/user/userLogin";
		
	}
	
	@RequestMapping(value = "login")
	public String login() throws Exception {
		
		return "infra/member/user/login";
		
	}
	
	@RequestMapping(value = "findID")
	public String findID() throws Exception {
		
		return "infra/member/user/findID";
		
	}
	
	@RequestMapping(value = "findPW")
	public String findPW() throws Exception {
		
		return "infra/member/user/findPW";
		
	}
	
	@RequestMapping(value = "memberRegForm")
	public String memberRegForm() throws Exception {
		
		return "infra/member/user/memberRegForm";
		
	}
	
	@RequestMapping(value = "Regsuccess")
	public String Regsuccess() throws Exception {
		
		return "infra/member/user/Regsuccess";
		
	}
	
	@RequestMapping(value = "mypage")
	public String mypage() throws Exception {
		
		return "infra/member/user/mypage";
		
	}
	
	@RequestMapping(value = "shipping")
	public String shipping() throws Exception {
		
		return "infra/member/user/shipping";
		
	}
	
	@RequestMapping(value = "infoModForm")
	public String infoModForm() throws Exception {
		
		return "infra/member/user/infoModForm";
		
	}
	
}
