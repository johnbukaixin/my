package com.ptl.yxl.dao;

import java.util.List;

import com.ptl.yxl.pojo.Suite;

public interface SuiteDao {
	/**
	 * 根据模块code找全部的试卷
	 * @param module
	 * @return
	 */
    List<Suite> getAllSuiteByModuleCode(String moduleCode);
    /**
     * 根据模块code和suite是否推荐属性查找推荐的试卷
     * @param module
     * @return
     */
    List<Suite> getRecommendSuite(String moduleCode);
    /**
     * 获取选择的试卷信息
     * @param suiteCode
     * @return
     */
	Suite getSuiteInfo(String suiteCode);
}
