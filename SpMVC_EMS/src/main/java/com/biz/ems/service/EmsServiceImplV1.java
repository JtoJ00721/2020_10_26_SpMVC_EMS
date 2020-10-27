package com.biz.ems.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.biz.ems.mapper.EmsDao;
import com.biz.ems.model.EmsVO;

@Service
@Qualifier("emsServiceV1")
public class EmsServiceImplV1 implements EmsService {

	@Autowired
	private EmsDao emsDao;

	@Override
	public List<EmsVO> selectAll() {
		return emsDao.selectAll();
	}

	@Override
	public EmsVO findById(Long id) {
		return emsDao.findById(id);
	}

	@Override
	public int insert(EmsVO vo) {

		LocalDateTime dateTime = LocalDateTime.now();
		String insertDate = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(dateTime);
		String insertTime = DateTimeFormatter.ofPattern("HH:mm:ss").format(dateTime);

		vo.setS_date(insertDate);
		vo.setS_time(insertTime);

		int ret = emsDao.insert(vo);
		return ret;
	}

	@Override
	public int update(EmsVO vo) {
		int ret = emsDao.update(vo);
		return ret;
	}

	@Override
	public int delete(Long id) {
		int ret = emsDao.delete(id);
		return ret;
	}

}
