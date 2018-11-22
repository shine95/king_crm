package com.fh.service.system.loanuser.impl;

import java.util.List;
import javax.annotation.Resource;

import com.fh.entity.system.LoanUser;
import com.fh.service.system.loanuser.LoanUserManager;
import org.springframework.stereotype.Service;
import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


/**
 * 说明： 贷款用户
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-02
 * @version
 */
@Service("loanuserService")
public class LoanUserService implements LoanUserManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception{
		dao.save("LoanUserMapper.save", pd);
	}

	/**删除
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception{
		dao.delete("LoanUserMapper.delete", pd);
	}

	/**修改
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception{
		dao.update("LoanUserMapper.edit", pd);
	}

	/**列表
	 * @param page
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("LoanUserMapper.datalistPage", page);
	}

	/**列表(全部)
	 * @param pd
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("LoanUserMapper.listAll", pd);
	}

	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("LoanUserMapper.findById", pd);
	}

	/**批量删除
	 * @param ArrayDATA_IDS
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("LoanUserMapper.deleteAll", ArrayDATA_IDS);
	}

//	@Override
//	public List<PageData> findAllPhone(PageData pd) {
//		return dao.findForList("LoanUserMapper.findAll",pd);
//	}

}

