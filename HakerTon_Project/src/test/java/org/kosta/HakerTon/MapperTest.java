package org.kosta.HakerTon;

import java.util.ArrayList;

import org.junit.jupiter.api.Test;
import org.kosta.HakerTon.model.mapper.CafeMapper;
import org.kosta.HakerTon.model.vo.CafeVO;
import org.kosta.HakerTon.model.vo.InputVO;
import org.kosta.HakerTon.service.CafeService;
import org.kosta.HakerTon.service.CafeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MapperTest {

	@Autowired
	CafeMapper cm;
	@Autowired
	CafeService cs;
	
	@Test
	void test() {
		ArrayList<CafeVO> list = new ArrayList<CafeVO>();
		InputVO inputVO = new InputVO();
		inputVO.setBest1("집중하기 좋아요");
		inputVO.setBest2("가성비가 좋아요");
		inputVO.setBest3("대화하기 좋아요");
		//cm.getCafeInfoList(inputVO.getBest1(),inputVO.getBest2(), inputVO.getBest3());
		//System.out.println(inputVO);
		System.out.println(cs.getCafeList(inputVO));
		//ArrayList<CafeVO> list = new ArrayList<CafeVO>();
		
	}

}
