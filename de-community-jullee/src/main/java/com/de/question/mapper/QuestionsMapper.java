package com.de.question.mapper;

import java.util.List;

import com.de.question.Questions;

public interface QuestionsMapper {
	
	public List<Questions> getList(Questions vo) throws Exception;
	
	public int getListCount(Questions vo) throws Exception;
	
	public Questions getView(int questionno) throws Exception;
	
	public int updateReanCnt(int questionno) throws Exception;

}
