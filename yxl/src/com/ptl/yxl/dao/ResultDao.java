package com.ptl.yxl.dao;

import com.ptl.yxl.pojo.Result;

public interface ResultDao {
     Result getRangeByTotal(String suiteCode,int total);
}
