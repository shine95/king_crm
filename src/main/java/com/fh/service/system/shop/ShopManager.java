package com.fh.service.system.shop;

import java.util.List;
import com.fh.entity.system.Shop;
import com.fh.util.PageData;

/** 
 * 说明： 商品上架接口
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-20
 * @version
 */
public interface ShopManager{

	/**
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	public List<Shop> listSubShopByParentId(String parentId)throws Exception;

	/**
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData getShopById(PageData pd) throws Exception;

	/**
	 * @param shop
	 * @throws Exception
	 */
	public void saveShop(Shop shop) throws Exception;

	/**
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData findMaxId(PageData pd) throws Exception;

	/**
	 * @param SHOP_ID
	 * @throws Exception
	 */
	public void deleteShopById(String SHOP_ID) throws Exception;

	/**
	 * @param shop
	 * @throws Exception
	 */
	public void edit(Shop shop) throws Exception;

	/**
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData editicon(PageData pd) throws Exception;

	/**
	 * @param SHOP_ID
	 * @return
	 * @throws Exception
	 */
	public List<Shop> listAllShop(String SHOP_ID) throws Exception;

	/**
	 * @param SHOP_ID
	 * @return
	 * @throws Exception
	 */
	public List<Shop> listAllShopQx(String SHOP_ID) throws Exception;
	
}

