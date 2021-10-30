package org.kosta.HakerTon.controller;

import org.kosta.HakerTon.model.mapper.CafeMapper;
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
	public String SelectInputValue(Model model, String best1, String best2, String best3) {
		InputVO inputVO = new InputVO();

		System.out.println(best1 + best2 + best3);

		// ArrayList<CafeVO> list = new ArrayList<CafeVO>();

//		ArrayList<CafeVO> list1 = cafeMapper.getCafeInfoList(best1);
//		ArrayList<CafeVO> list2 =cafeMapper.getCafeInfoList(best2);
//		ArrayList<CafeVO> list3 =cafeMapper.getCafeInfoList(best3);
//		model.addAttribute("cafeList1",list1);
//		model.addAttribute("cafeList2",list2);
//		model.addAttribute("cafeList3",list3);
		return "attribute/result";
	}
}
