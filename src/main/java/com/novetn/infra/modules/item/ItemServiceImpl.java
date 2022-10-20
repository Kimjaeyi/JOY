package com.novetn.infra.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.novetn.infra.common.util.UtilUpload;

@Service
public class ItemServiceImpl implements ItemService{

	@Autowired
	ItemDao dao;
	
	@Override
	public List<Item> selectList(ItemVo vo) throws Exception {
		List<Item> list = dao.selectList(vo);
		return list;
	}
	
//	이미지 업로드
	@Override
	public List<Item> selectUploadedimg(ItemVo vo) throws Exception {
		return dao.selectUploadedimg(vo);
	}
	
//	메인페이지
	@Override
	public List<Item> selectHotdealwmp(ItemVo vo) throws Exception {
		return dao.selectHotdealwmp(vo); 
	}
	
	@Override
	public List<Item> selectHotdealtmon(ItemVo vo) throws Exception {
		return dao.selectHotdealtmon(vo);
	}
	
	@Override
	public List<Item> selectHotdeal11st(ItemVo vo) throws Exception {
		return dao.selectHotdeal11st(vo);
	}
	
	@Override
	public List<Item> selectBestlist(ItemVo vo) throws Exception {
		return dao.selectBestlist(vo);
	}
	
	@Override
	public List<Item> selectView(ItemVo vo) throws Exception {
		return dao.selectView(vo);
	}
	
	@Override
	public List<Item> selectSection(ItemVo vo) throws Exception {
		return dao.selectSection(vo);
	}
	
	@Override
	public int insert(Item dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result : " + result);
		
		//여기부터 파일
        int seq = dao.selectLastSeq(); //seq 자동으로 부여되기때문

        System.out.println("seq result : " + result);
        
        int j = 0;
        for(MultipartFile myFile : dto.getImagefile()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                UtilUpload.upload(myFile, pathModule, dto);
                
                dto.setType(1);
                dto.setDefaultNY(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(seq+"");

                dao.insertUploaded(dto);
                j++;
            }
        }
        
		return result;
	}
	
	@Override
	public void update(Item dto) throws Exception {
		
		dao.update(dto);
		
//		int j = 0;
//        for(MultipartFile myFile : dto.getImagefile()) {
//
//            if(!myFile.isEmpty()) {
//                // postServiceImpl
//                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//                UtilUpload.upload(myFile, pathModule, dto);
//                
//                dto.setType(1);
//                dto.setDefaultNY(j == 0 ? 1 : 0);
//                dto.setSort(j+1);
//                dto.setPseq(dto.getSeq()+"");
//
//                dao.insertUploaded(dto);
//                j++;
//            }
//        }
        
	}
	
	@Override
	public int uelete(Item dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(ItemVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public Item selectOne(ItemVo vo) throws Exception {
		Item result = dao.selectOne(vo);
		System.out.println("service result : " + result);
		return result;
	}

	@Override
	public int selectOneCount(ItemVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public Item selectItemimg(ItemVo vo) throws Exception {
		return dao.selectItemimg(vo);
	}
	
	@Override
	public int insertUploaded(Item dto) throws Exception {
//		String selectLastSeq = dto.getSeq();
		
		int j = 0;
		for(MultipartFile myFile : dto.getImagefile()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                UtilUpload.upload(myFile, pathModule, dto);
                
                dto.setType(1);
                dto.setDefaultNY(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(dto.getSeq()+"");

                dao.insertUploaded(dto);
                j++;
            }
		}
		return 0;
	}
	
//	@Override
//	public Item imageUploaded(Item dto) throws Exception {
//		return dao.imageUploaded(dto);
//	}
	
}
