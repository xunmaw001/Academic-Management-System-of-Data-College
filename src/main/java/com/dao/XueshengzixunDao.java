package com.dao;

import com.entity.XueshengzixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueshengzixunVO;
import com.entity.view.XueshengzixunView;


/**
 * 学生咨询
 * 
 * @author 
 * @email 
 * @date 2022-03-31 09:46:16
 */
public interface XueshengzixunDao extends BaseMapper<XueshengzixunEntity> {
	
	List<XueshengzixunVO> selectListVO(@Param("ew") Wrapper<XueshengzixunEntity> wrapper);
	
	XueshengzixunVO selectVO(@Param("ew") Wrapper<XueshengzixunEntity> wrapper);
	
	List<XueshengzixunView> selectListView(@Param("ew") Wrapper<XueshengzixunEntity> wrapper);

	List<XueshengzixunView> selectListView(Pagination page,@Param("ew") Wrapper<XueshengzixunEntity> wrapper);
	
	XueshengzixunView selectView(@Param("ew") Wrapper<XueshengzixunEntity> wrapper);
	

}
