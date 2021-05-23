package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGoodsDAO;
import com.model.TCatelog;
import com.model.TGoods;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class goodsAction extends ActionSupport
{
	private int goodsId;
	private int goodsCatelogId;
	private String goodsName;
	private String goodsMiaoshu;
	private String fujian;
    private int goodsDijia;
	
    private String message;
	private String path;
	
	private TGoodsDAO goodsDAO;
	
	public String goodsAddByMe()
	{
		TGoods goods=new TGoods();
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		goods.setFujian(fujian);
		goods.setGoodsDijia(goodsDijia);
		
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		goods.setGoodsUserId(user.getUserId());
		goods.setGoodsShijian(new Date().toLocaleString());
		goods.setGoodsDel("no");
		goodsDAO.save(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaByMe.action");
		return "succeed";
	}
	
	public String goodsDelByMe()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsDel("yes");
		goodsDAO.attachDirty(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaByMe.action");
		return "succeed";
	}
	
	
	public String goodsManaByMe()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TGoods where goodsDel='no' and goodsUserId="+user.getUserId();
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsDetailHou()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsDetailQian()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	public String goodsDetail()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("good", goods);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsManaByAd()
	{
		String sql="from TGoods where goodsDel='no'";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsDelByAd()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsDel("yes");
		goodsDAO.attachDirty(goods);
		this.setMessage("操作成功");
		this.setPath("goodsManaByAd.action");
		return "succeed";
	}
	
	
	public String goodSearch()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		String sql="";
		sql="from TGoods where goodsDel='no' and goodsName like '%"+goodsName.trim()+"%'"+" order by goodsCatelogId";
		
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		request.put("goodsList", goodsList);
		
		return ActionSupport.SUCCESS;
	}

	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public int getGoodsCatelogId()
	{
		return goodsCatelogId;
	}

	public void setGoodsCatelogId(int goodsCatelogId)
	{
		this.goodsCatelogId = goodsCatelogId;
	}

	public TGoodsDAO getGoodsDAO()
	{
		return goodsDAO;
	}

	public void setGoodsDAO(TGoodsDAO goodsDAO)
	{
		this.goodsDAO = goodsDAO;
	}

	public int getGoodsDijia()
	{
		return goodsDijia;
	}

	public void setGoodsDijia(int goodsDijia)
	{
		this.goodsDijia = goodsDijia;
	}

	public int getGoodsId()
	{
		return goodsId;
	}

	public void setGoodsId(int goodsId)
	{
		this.goodsId = goodsId;
	}

	public String getGoodsMiaoshu()
	{
		return goodsMiaoshu;
	}

	public void setGoodsMiaoshu(String goodsMiaoshu)
	{
		this.goodsMiaoshu = goodsMiaoshu;
	}

	public String getGoodsName()
	{
		return goodsName;
	}

	public void setGoodsName(String goodsName)
	{
		this.goodsName = goodsName;
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
	
}
