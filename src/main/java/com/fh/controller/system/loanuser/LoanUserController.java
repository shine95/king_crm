package com.fh.controller.system.loanuser;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import com.fh.entity.system.LoanUser;
import com.fh.service.system.fhlog.FHlogManager;
import com.fh.service.system.loanuser.LoanUserManager;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
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
 * 说明：贷款用户
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-02
 */
@Controller
@RequestMapping(value="/loanuser")
public class LoanUserController extends BaseController {
	
	String menuUrl = "loanuser/list.do"; //菜单地址(权限用)
	@Resource(name="loanuserService")
	private LoanUserManager loanuserService;
	@Resource(name="fhlogService")
	private FHlogManager FHLOG;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增LoanUser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
//		pd.put("USER_ID", this.get32UUID());	//主键
//		pd.put("USER_ID", );
		String uuid = this.get32UUID();
		String pub_id = uuid.substring(0, 16);
		pd.put("PREORDER_ID", pub_id);
		loanuserService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除LoanUser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		loanuserService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改LoanUser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		loanuserService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}

//	/**电话列表
//	 * @param page
//	 * @throws Exception
//	 */
//	@RequestMapping(value="/phone/{phone}")
//	@ResponseBody
//	public int phone(Page page,@PathVariable("phone") String phone) throws Exception{
//		logBefore(logger, Jurisdiction.getUsername()+"phone列表");
//		PageData pd = new PageData();
//		pd = this.getPageData();
//		String keywords = pd.getString("keywords");				//关键词检索条件
//		if(null != keywords && !"".equals(keywords)){
//			pd.put("keywords", keywords.trim());
//		}
//		page.setPd(pd);
//		List<PageData>	varList = loanuserService.list(page);
//		List<String> phoneLists = new ArrayList<>();
//		for (PageData data : varList) {
//			phoneLists.add(data.getString("USER_PHONE"));
//		}
//		int i = phoneLists.indexOf(phone);
//		if (i>0) {
//			return 1;
//		}
//		return 0;
//	}


	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表LoanUser");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = loanuserService.list(page);	//列出LoanUser列表
		mv.setViewName("system/loanuser/loanuser_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
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
		mv.setViewName("system/loanuser/loanuser_edit");
		mv.addObject("msg", "save");
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
		pd = loanuserService.findById(pd);	//根据ID读取
		mv.setViewName("system/loanuser/loanuser_edit");
		mv.addObject("msg", "edit");
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
		logBefore(logger, Jurisdiction.getUsername()+"批量删除LoanUser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			loanuserService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, Jurisdiction.getUsername()+"导出LoanUser到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("编号");	//1
		titles.add("电话");	//2
		titles.add("系统");	//2
		titles.add("签名");	//2
		titles.add("贷款金额");	//3
		titles.add("贷款期限");	//4
		titles.add("用户姓名");	//5
		titles.add("身份证号");	//6
		titles.add("文化程度");	//7
		titles.add("贷款用途");	//8
		titles.add("职业");	//9
		titles.add("所在地");	//10
		titles.add("房子");	//11
		titles.add("车辆");	//12
		titles.add("信用卡");	//13
		titles.add("公积金");	//14
		titles.add("微粒贷");	//15
		titles.add("保险");	//16
		titles.add("社保");	//17
		titles.add("创建时间");	//18
		dataMap.put("titles", titles);
		List<PageData> varOList = loanuserService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("USER_ID"));	    //1
			vpd.put("var2", varOList.get(i).getString("USER_PHONE"));	    //2
			vpd.put("var2", varOList.get(i).getString("SYSTEM_TYPE"));	    //2
			vpd.put("var2", varOList.get(i).getString("CHANNEL"));	    //2
			vpd.put("var3", varOList.get(i).get("LOAN_AMOUNT").toString());	//3
			vpd.put("var4", varOList.get(i).get("LOAN_TERM").toString());	//4
			vpd.put("var5", varOList.get(i).getString("USER_NAME"));	    //5
			vpd.put("var6", varOList.get(i).getString("ID_CARD"));	    //6
			vpd.put("var7", varOList.get(i).get("CURLTURE").toString());	//7
			vpd.put("var8", varOList.get(i).get("PURPOSE").toString());	//8
			vpd.put("var9", varOList.get(i).get("WORK").toString());	//9
			vpd.put("var10", varOList.get(i).getString("ADDRESS"));	    //10
			vpd.put("var11", varOList.get(i).get("HOUSE").toString());	//11
			vpd.put("var12", varOList.get(i).get("CAR").toString());	//12
			vpd.put("var13", varOList.get(i).get("CREDIT_CARD").toString());	//13
			vpd.put("var14", varOList.get(i).get("ACCUMULATION_FUND").toString());	//14
			vpd.put("var15", varOList.get(i).get("WECHAT_LOAN").toString());	//15
			vpd.put("var16", varOList.get(i).get("INSURANCE").toString());	//16
			vpd.put("var17", varOList.get(i).get("SOCIAL_SECURITY").toString());	//17
			vpd.put("var18", varOList.get(i).getString("CREATE_TIME"));	    //18
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
