package com.ptl.yxl.dao;

import java.util.List;

public interface PageDao {
    /**
     * ����ܼ�¼��
     * @param hql
     * @return
     */
	int getAllCounts(String hql);
	
//	List getPageQuery(int );
}
