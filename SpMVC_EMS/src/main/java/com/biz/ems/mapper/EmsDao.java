package com.biz.ems.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;

import com.biz.ems.model.EmsVO;
import com.biz.ems.sql.EmsSQL;

public interface EmsDao {
	@Select("SELECT * FROM tbl_ems ORDER BY id DESC")
	public List<EmsVO> selectAll();

	@Select("SELECT * FROM tbl_ems WHERE id = #{id}")
	public EmsVO findById(Long id);

	@InsertProvider(type = EmsSQL.class, method = "ems_insert")
	public int insert(EmsVO vo);

	@InsertProvider(type = EmsSQL.class, method = "ems_update")
	public int update(EmsVO vo);

	@Delete("DELETE FROM tbl_ems WHERE id = #{id}")
	public int delete(Long id);
}
