package cn.hl.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.poi.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.druid.util.StringUtils;

import cn.hl.dao.StickMapper;
import cn.hl.pojo.Stick;
import cn.hl.service.StickService;
import cn.hl.utils.CommonConstant;
import cn.hl.utils.CommonResult;
import cn.hl.utils.HlUtils;
import cn.hl.utils.Pager;

@Service
public class StickServiceImpl implements StickService {

	@Autowired
	private StickMapper stickMapper;
	
	/*
	 * 根据用户id查询 贴 
	 */
	@Override
	public CommonResult findStickMessageByUserId(Map<String, String> map) {
		CommonResult cr=new CommonResult();
		//查询总页数
		int totalCount = stickMapper.queryStickCountByUserId(map.get("id"));
		Pager pager=new Pager(totalCount, Integer.parseInt(map.get("pageNumber")), Integer.parseInt(map.get("limit")));
		List<Stick> queryList = stickMapper.queryStickByUserId(
				(Integer.parseInt(map.get("pageNumber"))-1)*Integer.parseInt(map.get("limit"))
				, Integer.parseInt(map.get("limit")),map.get("id"));
		pager.setList(queryList);
		cr.put(HlUtils.DATA, pager);
		return cr;
	}

	@Override
	public CommonResult addStickMessage(Stick stick) {
		CommonResult cr =new CommonResult();
		if(stick!=null) {
			stick.setId(HlUtils.getOnlyId());
			stickMapper.addStickMessage(stick);
			return cr;
		}
		cr.put(HlUtils.CODE, CommonConstant.ERROR.getStatu());
		cr.put(HlUtils.MSG, CommonConstant.ERROR.getMsg());
		return cr;
	}
}
