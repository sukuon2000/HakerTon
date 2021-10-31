package org.kosta.HakerTon.controller;

import java.util.ArrayList;

import org.kosta.HakerTon.model.mapper.CafeMapper;
import org.kosta.HakerTon.model.vo.CafeVO;
import org.kosta.HakerTon.model.vo.InputVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mainSelect")
public class MainSelectController {

	@Autowired
	CafeMapper cafeMapper;

	@RequestMapping("SelectInputValue")
	public String SelectInputValue(Model model, InputVO inputVO) {

		System.out.println(inputVO);

		System.out.println(cafeMapper.selectCafe(inputVO));
		// ArrayList<CafeVO> list = new ArrayList<CafeVO>();

		ArrayList<CafeVO> list1 = cafeMapper.selectCafe(inputVO);
//		ArrayList<CafeVO> list2 =cafeMapper.getCafeInfoList(best2);
//		ArrayList<CafeVO> list3 =cafeMapper.getCafeInfoList(best3);
		model.addAttribute("cafeList1", list1);
//		model.addAttribute("cafeList2",list2);
//		model.addAttribute("cafeList3",list3);
		return "attribute/result";
	}
}
