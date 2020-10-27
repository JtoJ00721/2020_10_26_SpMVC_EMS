package com.biz.ems.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz.ems.model.ImageVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("fileServiceV1")
public class FileServiceImplV1 implements FileService{

	@Override
	public String fileUp(MultipartFile file) {
		// 파일 이름 추출
		String fileName = file.getOriginalFilename();
		
		
		// tomcat 서버의 home 디렉토리
		String rootPath = System.getProperty("catalina.home");
		
		File dir = new File(rootPath,"tmpFolder");
		if(!dir.exists()) {
			dir.mkdirs();
		}
		
		// 이미 있거나 생성된 tmpFolder와 업로드할 파일 이름을 연결하여
		// 파일 정보로 생성
		File serverSaveFile = new File(dir.getAbsolutePath(),fileName);
		
		log.debug("CATALINA" + dir.getAbsolutePath());
		
		FileOutputStream outFile;
		try {
			
			outFile = new FileOutputStream(serverSaveFile);
			BufferedOutputStream outStream = new BufferedOutputStream(outFile);
			
			// BIN파일을 OutputStream을 저장하기
			byte[] fileData = file.getBytes(); // 파일크기와 데이터 추출
			
			outStream.write(fileData);
			outStream.close();
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<ImageVO> filesUp(MultipartHttpServletRequest files) {
		return null;
	}

	@Override
	public boolean fileDelete(String b_file) {
		return false;
	}

}
