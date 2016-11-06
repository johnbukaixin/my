package com.ptl.yxl.service;

import java.util.List;
import java.util.Map;


public interface TestRecordService {
    Map<String, Object> submitUserData(List<Integer> optionIds,String ipAddr);
}
