package com.fh.entity.system;

import java.util.List;

/** 
 * 说明：商品上架 实体类
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-20
 */
public class Shop{

	private String SHOP_ID;	//主键
	private String SHOP_NAME;			//包组
	private String NAME;					//名称
	private String SHOP_URL;			//链接
	private String PARENT_ID;				//父类ID
	private String SHOP_ORDER;			//排序
	private String SHOP_ICON;			//图标
	private String SHOP_TYPE;			//类型
	private int SHOP_STATE;				//状态
	private String target;
	private Shop parentShop;
	private List<Shop> subShop;
	private boolean hasShop = false;

	public String getSHOP_ID() {
		return SHOP_ID;
	}

	public void setSHOP_ID(String SHOP_ID) {
		this.SHOP_ID = SHOP_ID;
	}

	public String getSHOP_NAME() {
		return SHOP_NAME;
	}

	public void setSHOP_NAME(String SHOP_NAME) {
		this.SHOP_NAME = SHOP_NAME;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String NAME) {
		this.NAME = NAME;
	}

	public String getSHOP_URL() {
		return SHOP_URL;
	}

	public void setSHOP_URL(String SHOP_URL) {
		this.SHOP_URL = SHOP_URL;
	}

	public String getPARENT_ID() {
		return PARENT_ID;
	}

	public void setPARENT_ID(String PARENT_ID) {
		this.PARENT_ID = PARENT_ID;
	}

	public String getSHOP_ORDER() {
		return SHOP_ORDER;
	}

	public void setSHOP_ORDER(String SHOP_ORDER) {
		this.SHOP_ORDER = SHOP_ORDER;
	}

	public String getSHOP_ICON() {
		return SHOP_ICON;
	}

	public void setSHOP_ICON(String SHOP_ICON) {
		this.SHOP_ICON = SHOP_ICON;
	}

	public String getSHOP_TYPE() {
		return SHOP_TYPE;
	}

	public void setSHOP_TYPE(String SHOP_TYPE) {
		this.SHOP_TYPE = SHOP_TYPE;
	}

	public int getSHOP_STATE() {
		return SHOP_STATE;
	}

	public void setSHOP_STATE(int SHOP_STATE) {
		this.SHOP_STATE = SHOP_STATE;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public Shop getParentShop() {
		return parentShop;
	}

	public void setParentShop(Shop parentShop) {
		this.parentShop = parentShop;
	}

	public List<Shop> getSubShop() {
		return subShop;
	}

	public void setSubShop(List<Shop> subShop) {
		this.subShop = subShop;
	}

	public boolean isHasShop() {
		return hasShop;
	}

	public void setHasShop(boolean hasShop) {
		this.hasShop = hasShop;
	}
}
