package com.hz.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hz.ssm.dao.CustomerMapper;
import com.hz.ssm.pojo.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {
	private  String  phone;
	
	@Autowired
	private CustomerMapper customerMapper;

	@Override
	public int addCustomerInfo(Customer customer) {
		int i = customerMapper.insertSelective(customer);
		System.out.println("i=="+i);
		return i;
	}
	
	
}
