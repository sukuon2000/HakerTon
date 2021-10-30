package org.kosta.HakerTon.controller;
import org.kosta.HakerTon.model.vo.InputVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mainSelect")
public class MainSelectController {
	@RequestMapping("SelectInputValue")
	public String SelectInputValue(Model model, String best1, String best2, String best3) {
		InputVO inputVO = new InputVO();
		inputVO.setBest1(best1);
		inputVO.setBest2(best2);
		inputVO.setBest3(best3);
		System.out.println(inputVO);
		return "attribute/result";
	}
}
