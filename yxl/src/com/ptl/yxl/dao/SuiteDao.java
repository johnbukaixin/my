package com.ptl.yxl.dao;

import java.util.List;

import com.ptl.yxl.pojo.Suite;

public interface SuiteDao {
	/**
	 * ����ģ��code��ȫ�����Ծ�
	 * @param module
	 * @return
	 */
    List<Suite> getAllSuiteByModuleCode(String moduleCode);
    /**
     * ����ģ��code��suite�Ƿ��Ƽ����Բ����Ƽ����Ծ�
     * @param module
     * @return
     */
    List<Suite> getRecommendSuite(String moduleCode);
    /**
     * ��ȡѡ����Ծ���Ϣ
     * @param suiteCode
     * @return
     */
	Suite getSuiteInfo(String suiteCode);
}
