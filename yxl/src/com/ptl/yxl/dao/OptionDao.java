package com.ptl.yxl.dao;

import java.util.List;

import com.ptl.yxl.pojo.Option;

public interface OptionDao {

	List<Option> getOptions(List<Integer> optionIds);
}
