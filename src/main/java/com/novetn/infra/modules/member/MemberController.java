package com.novetn.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.novetn.infra.common.util.UtilCookie;
import com.novetn.infra.modules.code.CodeServiceImpl;

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
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	/* @SuppressWarnings(value = { "all" }) */
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
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
	
	@RequestMapping(value = "memberJoin")
	public String memberJoin(MemberVo vo, Member dto) throws Exception {
		
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		service.insert(dto);
		return "infra/member/user/Regsuccess";
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
	
//	@RequestMapping(value = "managerLogin")
//	
//	public String managerLogin() throws Exception {
//		
//		return "infra/member/xdmin/managerLogin";
//		
//	}
	
//	@RequestMapping(value = "userLogin")
//	public String userLogin() throws Exception {
//		
//		return "infra/item/user/mainPage";
//		
//	}
	
//	@RequestMapping(value = "loginSuccess")
//	public String loginSuccess() throws Exception {
//		
//		return "/";
//		
//	}
	
	@RequestMapping(value = "login")
	public String login() throws Exception {
		
		return "infra/member/user/loginForm";
		
	}
	
	@RequestMapping(value = "dminLogin")
	public String dminlogin() throws Exception {
		
		return "infra/member/xdmin/dminloginForm";
		
	}
	
	@RequestMapping(value = "findID")
	public String findID() throws Exception {
		
		return "infra/member/user/findID";
		
	}
	
	@RequestMapping(value = "findPW")
	public String findPW() throws Exception {
		
		return "infra/member/user/findPW";
		
	}
	
	@RequestMapping(value = "join")
	public String join() throws Exception {
		
		return "infra/member/user/memberRegForm";
		
	}
	
	@RequestMapping(value = "mypage")
	public String mypage() throws Exception {
		
		return "infra/member/user/mypage";
		
	}
	
	@RequestMapping(value = "changePW")
	public String changePW() throws Exception {
		
		return "infra/member/user/changePW";
		
	}
	
	@RequestMapping(value = "unregister")
	public String unregister(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("user", result);
		
		return "infra/member/user/unregister";
	}
	
	@RequestMapping(value = "unregSuccess")
	public String unregSuccess(MemberVo vo, Member dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		service.unreg(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		httpSession.invalidate();
		
		return "infra/member/user/unregSuccess";
		
	}
	
	@RequestMapping(value = "shipping")
	public String shipping() throws Exception {
		
		return "infra/member/user/shipping";
		
	}
	
	//회원수정폼
	@RequestMapping(value = "infoModForm")
	public String infoModForm(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("user", result);
		
		return "infra/member/user/infoModForm";
	}
	
	//회원수정업데이트
	@RequestMapping(value = "infochange")
	public String infochange(MemberVo vo, Member dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		
		dto.setSeq(seq);
		
		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
		service.infochange(dto);
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/infoModForm";
	}
	
//	@RequestMapping(value = "memberMod")
//	public String memberMod(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
//		
//		dto.setEmail(dto.getEmailID() + CodeServiceImpl.selectOneCachedCode(dto.getEmailDomain()));
//		service.insert(dto);
//		
//		vo.setSeq(dto.getSeq());
//		
//		redirectAttributes.addFlashAttribute("vo", vo);
//		
//		return "redirect:/member/memberMod";
//	}
	
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				httpSession.setAttribute("sessSeq", rtMember2.getSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());

				System.out.println(httpSession.getAttribute("sessName"));
				returnMap.put("rt", "success");
				}
				
			} else {
				returnMap.put("rt", "fail");
			}
		
			return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		UtilCookie.deleteCookie();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
//		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"seq", "등급", "이름", "성별", "생년월일", "아이디", "이메일", "연락처", "가입일", "개인정보유효기간", "탈퇴여부"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCdname_ko());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(""+list.get(i).getGender()));
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getDob());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getId());
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getEmail());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getPhone());    
	            
	            cell = row.createCell(8);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getRegDate());
	            
	            cell = row.createCell(9);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getValidity() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(""+list.get(i).getValidity()));
	            
	            cell = row.createCell(10);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getDelNY() == 1 ? "Y" : "N");
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	
//	@ResponseBody
//	@RequestMapping(value = "loginProc")
//	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
//		Map<String, Object> returnMap = new HashMap<String, Object>();
//
//		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
//		Member rtMember = service.selectOneLogin(dto);
//
//		if (rtMember != null) {
//			httpSession.setAttribute("sessSeq", rtMember.getSeq());
//			httpSession.setAttribute("sessId", rtMember.getId());
//			
//			returnMap.put("rt", "success");
//			
//		} else {
//			returnMap.put("rt", "fail");
//		}
//		return returnMap;
//	}
	
}
