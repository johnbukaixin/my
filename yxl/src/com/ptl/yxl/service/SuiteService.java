package com.ptl.yxl.service;

import java.util.List;

import com.ptl.yxl.pojo.Suite;

public interface SuiteService {
    List<Suite> getRecommendSuite(String moduleCode);
    List<Suite> getAllSuiteByModuleCode(String moduleCode);
    Suite getSuiteInfo(String suiteCode);
}
