package com.fh.service.system.shop.impl;

import java.util.List;
import javax.annotation.Resource;

import com.fh.entity.system.Shop;
import com.fh.service.system.shop.ShopManager;
import org.springframework.stereotype.Service;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;

/** 
 * 说明： 商品上架
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-20
 * @version
 */
@Service("shopService")
public class ShopService implements ShopManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	/**
	 * 通过ID获取其子一级菜单
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Shop> listSubShopByParentId(String parentId) throws Exception {
		return (List<Shop>) dao.findForList("ShopMapper.listSubShopByParentId", parentId);
	}

	/**
	 * 通过菜单ID获取数据
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData getShopById(PageData pd) throws Exception {
		return (PageData) dao.findForObject("ShopMapper.getShopById", pd);
	}

	/**
	 * 新增菜单
	 * @param shop
	 * @throws Exception
	 */
	public void saveShop(Shop shop) throws Exception {
		dao.save("ShopMapper.insertShop", shop);
	}

	/**
	 * 取最大ID
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData findMaxId(PageData pd) throws Exception {
		return (PageData) dao.findForObject("ShopMapper.findMaxId", pd);
	}

	/**
	 * 删除菜单
	 * @param SHOP_ID
	 * @throws Exception
	 */
	public void deleteShopById(String SHOP_ID) throws Exception {
		dao.save("ShopMapper.deleteShopById", SHOP_ID);
	}

	/**
	 * 编辑
	 * @param shop
	 * @return
	 * @throws Exception
	 */
	public void edit(Shop shop) throws Exception {
		dao.update("ShopMapper.updateShop", shop);
	}

	/**
	 * 保存菜单图标 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData editicon(PageData pd) throws Exception {
		return (PageData)dao.findForObject("ShopMapper.editicon", pd);
	}

	/**
	 * 获取所有菜单并填充每个菜单的子菜单列表(菜单管理)(递归处理)
	 * @param shop_ID
	 * @return
	 * @throws Exception
	 */
	public List<Shop> listAllShop(String shop_ID) throws Exception {
		List<Shop> shopList = this.listSubShopByParentId(shop_ID);
		for(Shop shop : shopList){
//			shop.setSHOP_URL("shop/productList.do");
			shop.setSubShop(this.listAllShop(shop.getSHOP_ID()));
			shop.setTarget("treeFrame");
		}
		return shopList;
	}

	/**
	 * 获取所有菜单并填充每个菜单的子菜单列表(系统菜单列表)(递归处理)
	 * @param shop_ID
	 * @return
	 * @throws Exception
	 */
	public List<Shop> listAllShopQx(String shop_ID) throws Exception {
		List<Shop> shopList = this.listSubShopByParentId(shop_ID);
		for(Shop shop : shopList){
			shop.setSubShop(this.listAllShopQx(shop.getSHOP_ID()));
			shop.setTarget("treeFrame");
		}
		return shopList;
	}
	
}

