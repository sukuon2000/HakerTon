package org.kosta.HakerTon.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mainSelect")
public class MainSelectController {
	@RequestMapping("result")
	public String SelectInputValue() {
		return "attribute/result";
	}
}
