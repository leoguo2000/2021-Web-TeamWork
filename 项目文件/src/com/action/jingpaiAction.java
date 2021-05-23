package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TGoodsDAO;
import com.dao.TJingpaiDAO;
import com.model.TJingpai;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class jingpaiAction extends ActionSupport
{
	private int jingpaiId;
	
	private int jingpaiGoodsId;
	
	private String message;
	private String path;
	private TJingpaiDAO jingpaiDAO;
	private TGoodsDAO goodsDAO;
	
	public String jingpaiAdd()
	{
		TJingpai jingpai=new TJingpai();
		jingpai.setJingpaiGoodsId(jingpaiGoodsId);
		jingpai.setJingpaiJiage(0);
		jingpai.setJingpaiShijian(new Date().toLocaleString());
		
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		jingpai.setJingpaiUserId(user.getUserId());
		
		jingpai.setDel("no");
		jingpaiDAO.save(jingpai);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "收藏成功");
		return ActionSupport.SUCCESS;
	}
	
	public String jingpaiByMe()
	{
		
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		String sql="from TJingpai where jingpaiUserId="+user.getUserId();
		List jingpaiList=jingpaiDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<jingpaiList.size();i++)
		{
			TJingpai jingpai=(TJingpai)jingpaiList.get(i);
			jingpai.setJingpaiGoodsName(goodsDAO.findById(jingpai.getJingpaiGoodsId()).getGoodsName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jingpaiList", jingpaiList);
		return ActionSupport.SUCCESS;
	}
	
	public String jingpaikan()
	{
		
		String sql="from TJingpai where jingpaiGoodsId="+jingpaiGoodsId;
		List jingpaiList=jingpaiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jingpaiList", jingpaiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public TJingpaiDAO getJingpaiDAO()
	{
		return jingpaiDAO;
	}
	public void setJingpaiDAO(TJingpaiDAO jingpaiDAO)
	{
		this.jingpaiDAO = jingpaiDAO;
	}
	public int getJingpaiGoodsId()
	{
		return jingpaiGoodsId;
	}
	public void setJingpaiGoodsId(int jingpaiGoodsId)
	{
		this.jingpaiGoodsId = jingpaiGoodsId;
	}
	public int getJingpaiId()
	{
		return jingpaiId;
	}
	public void setJingpaiId(int jingpaiId)
	{
		this.jingpaiId = jingpaiId;
	}
	
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
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
