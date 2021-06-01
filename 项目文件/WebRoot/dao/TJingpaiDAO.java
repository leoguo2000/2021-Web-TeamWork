package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TJingpai;

/**
 * Data access object (DAO) for domain model class TJingpai.
 * 
 * @see com.model.TJingpai
 * @author MyEclipse Persistence Tools
 */

public class TJingpaiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TJingpaiDAO.class);

	// property constants
	public static final String JINGPAI_JIAGE = "jingpaiJiage";

	public static final String JINGPAI_GOODS_ID = "jingpaiGoodsId";

	public static final String JINGPAI_USER_ID = "jingpaiUserId";

	public static final String JINGPAI_SHIJIAN = "jingpaiShijian";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TJingpai transientInstance)
	{
		log.debug("saving TJingpai instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TJingpai persistentInstance)
	{
		log.debug("deleting TJingpai instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TJingpai findById(java.lang.Integer id)
	{
		log.debug("getting TJingpai instance with id: " + id);
		try
		{
			TJingpai instance = (TJingpai) getHibernateTemplate().get(
					"com.model.TJingpai", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TJingpai instance)
	{
		log.debug("finding TJingpai instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TJingpai instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TJingpai as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByJingpaiJiage(Object jingpaiJiage)
	{
		return findByProperty(JINGPAI_JIAGE, jingpaiJiage);
	}

	public List findByJingpaiGoodsId(Object jingpaiGoodsId)
	{
		return findByProperty(JINGPAI_GOODS_ID, jingpaiGoodsId);
	}

	public List findByJingpaiUserId(Object jingpaiUserId)
	{
		return findByProperty(JINGPAI_USER_ID, jingpaiUserId);
	}

	public List findByJingpaiShijian(Object jingpaiShijian)
	{
		return findByProperty(JINGPAI_SHIJIAN, jingpaiShijian);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TJingpai instances");
		try
		{
			String queryString = "from TJingpai";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TJingpai merge(TJingpai detachedInstance)
	{
		log.debug("merging TJingpai instance");
		try
		{
			TJingpai result = (TJingpai) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TJingpai instance)
	{
		log.debug("attaching dirty TJingpai instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TJingpai instance)
	{
		log.debug("attaching clean TJingpai instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TJingpaiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TJingpaiDAO) ctx.getBean("TJingpaiDAO");
	}
}