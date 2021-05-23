package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGoodsDAO;
import com.model.TCatelog;
import com.model.TGoods;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TCatelogDAO catelogDAO;
	private TGoodsDAO goodsDAO;
	
	public String index()
	{
		String sql="from TCatelog where catelogDel='no'";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<cateLogList.size();i++)
		{
			TCatelog catelog=(TCatelog)cateLogList.get(i);
			String sql1="from TGoods where goodsDel='no' and goodsCatelogId="+catelog.getCatelogId()+" order by goodsId";
			List list=goodsDAO.getHibernateTemplate().find(sql1);
			int k=list.size();
			if(k<5)
			{
				for(int j=0;j<5-k;j++)
				{
					list.add(new TGoods());
				}
			}
			if(list.size()>5)
			{
				list=list.subList(0, 5);
			}
			catelog.setGoodsList(list);
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cateLogList", cateLogList);
		return ActionSupport.SUCCESS;
	}

	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}

	public TGoodsDAO getGoodsDAO()
	{
		return goodsDAO;
	}

	public void setGoodsDAO(TGoodsDAO goodsDAO)
	{
		this.goodsDAO = goodsDAO;
	}
	
}