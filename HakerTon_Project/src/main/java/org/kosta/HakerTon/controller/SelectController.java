package org.kosta.HakerTon.controller;

import org.kosta.HakerTon.model.vo.InputVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("select")
public class SelectController {
	
	@RequestMapping("step1")
	public String selectStep1(Model model, InputVO inputVO) {
		return "attribute/select1";
	}

	@RequestMapping("step2")
	public String selectStep2() {
		return "attribute/select2";
	}

	@RequestMapping("step3")
	public String selectStep3() {
		return "attribute/select3";
	}

	@RequestMapping("step4")
	public String selectStep4() {
		return "attribute/select4";
	}

	@RequestMapping("step5")
	public String selectStep5() {
		return "attribute/select5";
	}

	@RequestMapping("step6")
	public String selectStep6() {
		return "attribute/select6";
	}

	@RequestMapping("step7")
	public String selectStep7() {
		return "attribute/select7";
	}
	@RequestMapping("result")
	public String showresult() {
		return "attribute/result";
	}

	
}
