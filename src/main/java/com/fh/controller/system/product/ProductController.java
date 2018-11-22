package com.fh.controller.system.product;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import com.fh.entity.system.Pack;
import com.fh.service.system.fhlog.FHlogManager;
import com.fh.service.system.pack.PackageManager;
import com.fh.service.system.product.ProductManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.Jurisdiction;

/** 
 * 说明：产品
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-05
 */
@Controller
@RequestMapping(value="/product")
public class ProductController extends BaseController {
	
	String menuUrl = "product/list.do"; //菜单地址(权限用)
	@Resource(name="productService")
	private ProductManager productService;
	@Resource(name="packageService")
	private PackageManager packageManager;
	@Resource(name="fhlogService")
	private FHlogManager FHLOG;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增Product");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();

		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("PRODUCT_ID", this.get32UUID());	//主键
		productService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		FHLOG.save(Jurisdiction.getUsername(), "新增商品："+pd);
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除Product");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		productService.delete(pd);
		out.write("success");
		FHLOG.save(Jurisdiction.getUsername(), "删除商品："+pd);
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改Product");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		productService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		FHLOG.save(Jurisdiction.getUsername(), "修改商品："+pd);
		return mv;
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表Product");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
//		int packageId = Integer.parseInt(pd.getString("PACKAGE_ID"));
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = productService.list(page);	//列出Product列表
		mv.setViewName("system/product/product_list");
		List<Pack> packList = packageManager.selectPackageNameList(pd);
		mv.addObject("packList", packList);
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
//		FHLOG.save(Jurisdiction.getUsername(), "获取商品列表：");
		return mv;
	}
	
	/**去新增页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
//		pd.put("id",1);
		List<Pack> packList = packageManager.selectPackageNameList(pd);
		mv.setViewName("system/product/product_edit");
		mv.addObject("msg", "save");
		mv.addObject("packList", packList);
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**去修改页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = productService.findById(pd);	//根据ID读取
		mv.setViewName("system/product/product_edit");
		List<Pack> packList = packageManager.selectPackageNameList(pd);
		mv.addObject("msg", "edit");
		mv.addObject("packList", packList);
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除Product");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			productService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出Product到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("备注1");	//1
		titles.add("产品名称");	//2
		titles.add("产品链接");	//3
		titles.add("产品图");	//4
		titles.add("描述");	//5
		titles.add("点击次数");	//6
		titles.add("添加时间");	//7
		dataMap.put("titles", titles);
		List<PageData> varOList = productService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("PRODUCT_ID"));	    //1
			vpd.put("var2", varOList.get(i).getString("PRODUCT_NAME"));	    //2
			vpd.put("var3", varOList.get(i).getString("PRODUCT_URL"));	    //3
			vpd.put("var4", varOList.get(i).getString("PRODUCT_IMG"));	    //4
			vpd.put("var5", varOList.get(i).getString("PRODUCT_TYPE"));	    //5
			vpd.put("var6", varOList.get(i).get("CLICK_NUMBER").toString());	//6
			vpd.put("var7", varOList.get(i).getString("CREATE_TIME"));	    //7
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
