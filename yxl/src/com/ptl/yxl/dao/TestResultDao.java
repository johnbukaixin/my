package com.ptl.yxl.dao;

import java.util.List;

import com.ptl.yxl.pojo.FinalResult;
import com.ptl.yxl.pojo.Result;

public interface TestResultDao {

	List<FinalResult> getAllResult(Result result);

}
