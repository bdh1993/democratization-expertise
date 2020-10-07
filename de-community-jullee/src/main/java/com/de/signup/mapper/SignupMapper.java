package com.de.signup.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.de.enterprise.Enterprises;
import com.de.user.UsersDetail;

@Mapper
public interface SignupMapper {

	public int saveEnterprisebizno(Enterprises vo) throws Exception;
	public Integer bizNoCheck(Enterprises vo) throws Exception;
	public int getEnterpriseno(Enterprises vo) throws Exception;
	public int saveDetail(UsersDetail vo) throws Exception;

	
}
