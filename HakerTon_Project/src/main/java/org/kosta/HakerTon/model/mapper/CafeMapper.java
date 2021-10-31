package org.kosta.HakerTon.model.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.kosta.HakerTon.model.vo.CafeVO;
import org.kosta.HakerTon.model.vo.InputVO;

@Mapper
public interface CafeMapper {
   ArrayList<CafeVO> selectCafe(InputVO inputVO);
}