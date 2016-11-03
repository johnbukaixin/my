package com.ptl.yxl.dao;

import java.util.List;

public interface PageDao {
    /**
     * 获得总记录数
     * @param hql
     * @return
     */
	int getAllCounts(String hql);
	
//	List getPageQuery(int );
}
