package org.kosta.HakerTon.model.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.HakerTon.model.vo.CafeVO;

@Mapper
public interface CafeMapper {
	ArrayList<CafeVO> getCafeInfoList(String best1, String best2, String best3);
}
