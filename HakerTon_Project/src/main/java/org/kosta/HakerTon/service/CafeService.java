package org.kosta.HakerTon.service;

import java.util.ArrayList;

import org.kosta.HakerTon.model.vo.CafeVO;
import org.kosta.HakerTon.model.vo.InputVO;

public interface CafeService {
	
	ArrayList<CafeVO>  getCafeList(InputVO inputVO);
}
