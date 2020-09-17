package cn.hl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hl.dao.TestMapper;
import cn.hl.pojo.Test;
import cn.hl.service.TestService;

@Service
public class TestServiceImpl implements TestService{
	{
		System.out.println("service放进容器了");
	}
	@Autowired
	private TestMapper testMapper;
	@Override
	public List<Test> findTestList() {
		// TODO Auto-generated method stub
		return testMapper.findTestList();
	}

	
	
}
