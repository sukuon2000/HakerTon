package org.kosta.HakerTon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("select")
public class SelectController {
	
	@RequestMapping("step1")
	public String selectStep1() {
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

	@RequestMapping("step8")
	public String selectStep8() {
		return "attribute/select8";
	}

	@RequestMapping("step9")
	public String selectStep9() {
		return "attribute/select9";
	}

	@RequestMapping("step10")
	public String selectStep10() {
		return "attribute/select10";
	}
}
