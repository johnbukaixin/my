package com.ptl.yxl.service;

import com.ptl.yxl.pojo.Result;

public interface ResultService {

    Result getRangeByTotal(String suiteCode,int total);
}
