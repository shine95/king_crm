package com.fh.controller.system.shop;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.Pack;
import com.fh.entity.system.Shop;
import com.fh.service.system.fhlog.FHlogManager;
import com.fh.service.system.pack.PackageManager;
import com.fh.service.system.product.ProductManager;
import com.fh.service.system.shop.ShopManager;
import com.fh.util.*;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 类名称：shopController 菜单处理
 * 创建人：Shine Flag
 * 修改时间：2018-7-1
 * @version
 */
@Controller
@RequestMapping(value="/shop")
public class ShopController extends BaseController {

	String shopUrl = "shop.do"; //菜单地址(权限用)
	@Resource(name="shopService")
	private ShopManager shopService;
	@Resource(name="productService")
	private ProductManager productService;
	@Resource(name="packageService")
	private PackageManager packageManager;
	@Resource(name="fhlogService")
	private FHlogManager FHLOG;
	
	/**
	 * 显示菜单列表
	 * @return
	 */
	@RequestMapping
	public ModelAndView list()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			String SHOP_ID = (null == pd.get("SHOP_ID") || "".equals(pd.get("SHOP_ID")
					.toString()))?"0":pd.get("SHOP_ID").toString();
			List<Shop> shopList = shopService.listSubShopByParentId(SHOP_ID);
			mv.addObject("pd", shopService.getShopById(pd));	//传入父菜单所有信息
			mv.addObject("SHOP_ID", SHOP_ID);
			//MSG=change 则为编辑或删除后跳转过来的
			mv.addObject("MSG", null == pd.get("MSG")?"list":pd.get("MSG").toString());
			mv.addObject("shopList", shopList);
			mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
			mv.setViewName("system/shop/shop_list");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}


	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/productList")
	public ModelAndView list(Page page,Integer PACKAGE_ID) throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		logBefore(logger, Jurisdiction.getUsername()+"列表Product");
//		if (PACKAGE_ID!=null) {
//			PACKAGE_ID=0;
//		}
		//校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		if(!Jurisdiction.buttonJurisdiction(shopUrl, "cha"))
		{return null;}
		ModelAndView mv = this.getModelAndView();
		pd.put("PACKAGE_ID",PACKAGE_ID);
//		String keywords = pd.getString("keywords");				//关键词检索条件
//		if(null != keywords && !"".equals(keywords)){
//			pd.put("keywords", keywords.trim());
//		}
		page.setPd(pd);
		List<PageData>	varList = productService.packList(page);	//列出Product列表
		mv.setViewName("system/shop/product_list");
		List<Pack> packList = packageManager.selectPackageNameList(pd);
		mv.addObject("packList", packList);
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
//		FHLOG.save(Jurisdiction.getUsername(), "获取商品列表：");
		return mv;
	}

	/**
	 * 请求新增菜单页面
	 * @return
	 */
	@RequestMapping(value="/toAdd")
	public ModelAndView toAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = new PageData();
			pd = this.getPageData();
			String SHOP_ID = (null == pd.get("SHOP_ID") || "".equals(pd.get("SHOP_ID")
					.toString()))?"0":pd.get("SHOP_ID").toString();//接收传过来的上级菜单ID,如果上级为顶级就取值“0”
			pd.put("SHOP_ID",SHOP_ID);
			mv.addObject("pds", shopService.getShopById(pd));	//传入父菜单所有信息
			mv.addObject("SHOP_ID", SHOP_ID);					//传入菜单ID，作为子菜单的父菜单ID用
			mv.addObject("MSG", "add");							//执行状态 add 为添加
			mv.setViewName("system/shop/shop_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}	
	
	/**
	 * 保存菜单信息
	 * @param shop
	 * @return
	 */
	@RequestMapping(value="/add")
	public ModelAndView add(Shop shop)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(shopUrl, "add")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"保存菜单");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			shop.setSHOP_ID(String.valueOf(Integer.parseInt(shopService.findMaxId(pd).get("MID").toString())+1));
			shop.setSHOP_ICON("shop-icon fa fa-leaf black");//默认菜单图标
			shopService.saveShop(shop); //保存菜单
			FHLOG.save(Jurisdiction.getUsername(), "新增菜单"+shop.getSHOP_NAME());
		} catch(Exception e){
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
		}
		mv.setViewName("redirect:/shop.do?MSG='change'&SHOP_ID="+shop.getPARENT_ID()); //保存成功跳转到列表页面
		return mv;
	}
	
	/**
	 * 删除菜单
	 */
	@RequestMapping(value="/delete")
	@ResponseBody
	public Object delete(@RequestParam String SHOP_ID)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(shopUrl, "del")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"删除菜单");
		Map<String,String> map = new HashMap<String,String>();
		String errInfo = "";
		try{
			if(shopService.listSubShopByParentId(SHOP_ID).size() > 0){//判断是否有子菜单，是：不允许删除
				errInfo = "false";
			}else{
				shopService.deleteShopById(SHOP_ID);
				FHLOG.save(Jurisdiction.getUsername(), "删除菜单ID"+SHOP_ID);
				errInfo = "success";
			}
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo);
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**
	 * 请求编辑菜单页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit(String id)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd.put("SHOP_ID",id);				//接收过来的要修改的ID
			pd = shopService.getShopById(pd);	//读取此ID的菜单数据
			mv.addObject("pd", pd);				//放入视图容器
			pd.put("SHOP_ID",pd.get("PARENT_ID").toString());			//用作读取父菜单信息
			mv.addObject("pds", shopService.getShopById(pd));			//传入父菜单所有信息
			//传入父菜单ID，作为子菜单的父菜单ID用
			mv.addObject("SHOP_ID", pd.get("PARENT_ID").toString());
			mv.addObject("MSG", "edit");
			pd.put("SHOP_ID",id);			//复原本菜单ID
			mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
			mv.setViewName("system/shop/shop_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 保存编辑
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit(Shop shop)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(shopUrl, "edit")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改菜单");
		ModelAndView mv = this.getModelAndView();
		try{
			shopService.edit(shop);
			FHLOG.save(Jurisdiction.getUsername(), "修改菜单"+shop.getSHOP_NAME());
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		//保存成功跳转到列表页面
		mv.setViewName("redirect:/shop.do?MSG='change'&SHOP_ID="+shop.getPARENT_ID());
		return mv;
	}
	
	/**
	 * 请求编辑菜单图标页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/toEditicon")
	public ModelAndView toEditicon(String SHOP_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd.put("SHOP_ID",SHOP_ID);
			mv.addObject("pd", pd);
			mv.setViewName("system/shop/shop_icon");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 保存菜单图标 
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/editicon")
	public ModelAndView editicon()throws Exception{
		if(!Jurisdiction.buttonJurisdiction(shopUrl, "edit")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改菜单图标");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd = shopService.editicon(pd);
			mv.addObject("msg","success");
		} catch(Exception e){
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
		}
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 显示菜单列表ztree(菜单管理)
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listAllShop")
	public ModelAndView listAllshop(Model model,String SHOP_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			JSONArray arr = JSONArray.fromObject(shopService.listAllShop("0"));
			String json = arr.toString();
			json = json.replaceAll("SHOP_ID", "id")
					.replaceAll("PARENT_ID", "pId")
					.replaceAll("SHOP_NAME", "name")
					.replaceAll("subShop", "nodes")
					.replaceAll("hasShop", "checked")
					.replaceAll("SHOP_URL", "url");
			model.addAttribute("zTreeNodes", json);
			mv.addObject("SHOP_ID",SHOP_ID);
			mv.setViewName("system/shop/shop_ztree");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 显示菜单列表ztree(拓展左侧四级菜单)
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/otherlistShop")
	public ModelAndView otherlistShop(Model model,String SHOP_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = new PageData();
			pd.put("SHOP_ID", SHOP_ID);
			String SHOP_URL = shopService.getShopById(pd).getString("SHOP_URL");
			if("#".equals(SHOP_URL.trim()) || "".equals(SHOP_URL.trim()) || null == SHOP_URL){
				SHOP_URL = "login_default.do";
			}
			String roleRights = Jurisdiction.getSession().getAttribute(Jurisdiction.getUsername()
					+ Const.SESSION_ROLE_RIGHTS).toString();	//获取本角色菜单权限
			List<Shop> athshopList = shopService.listAllShopQx(SHOP_ID);					//获取某菜单下所有子菜单
			athshopList = this.readshop(athshopList, roleRights);							//根据权限分配菜单
			JSONArray arr = JSONArray.fromObject(athshopList);
			String json = arr.toString();
			json = json.replaceAll("SHOP_ID", "id")
					.replaceAll("PARENT_ID", "pId")
					.replaceAll("SHOP_NAME", "name")
					.replaceAll("subShop", "nodes")
					.replaceAll("hasShop", "checked")
					.replaceAll("SHOP_URL", "url")
					.replaceAll("#", "");
			model.addAttribute("zTreeNodes", json);
			mv.addObject("SHOP_URL",SHOP_URL);		//本ID菜单链接
			mv.setViewName("system/shop/shop_ztree_other");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**根据角色权限获取本权限的菜单列表(递归处理)
	 * @param shopList：传入的总菜单
	 * @param roleRights：加密的权限字符串
	 * @return
	 */
	public List<Shop> readshop(List<Shop> shopList,String roleRights){
		for(int i=0;i<shopList.size();i++){
			shopList.get(i).setHasShop(RightsHelper.testRights(roleRights, shopList.get(i).getSHOP_ID()));
			if(shopList.get(i).isHasShop() && "1".equals(shopList.get(i).getSHOP_STATE())){	//判断是否有此菜单权限并且是否隐藏
				this.readshop(shopList.get(i).getSubShop(), roleRights);					//是：继续排查其子菜单
			}else{
				shopList.remove(i);
				i--;
			}
		}
		return shopList;
	}

	
}
