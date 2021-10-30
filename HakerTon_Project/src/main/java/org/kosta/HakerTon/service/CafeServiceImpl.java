package org.kosta.HakerTon.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.kosta.HakerTon.model.mapper.CafeMapper;
import org.kosta.HakerTon.model.vo.CafeVO;
import org.kosta.HakerTon.model.vo.InputVO;
import org.springframework.stereotype.Service;

@Service
public class CafeServiceImpl implements CafeService {
	@Resource
	private CafeMapper cafeMapper;


	@Override
	public ArrayList<CafeVO> getCafeList(InputVO inputVO) {
		// TODO Auto-generated method stub
		return cafeMapper.getCafeInfoList(inputVO.getBest1(), inputVO.getBest2(), inputVO.getBest3());
	}
}
