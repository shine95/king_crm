package com.fh.service.system.pack.impl;

import java.util.List;
import javax.annotation.Resource;

import com.fh.entity.system.Pack;
import com.fh.service.system.pack.PackageManager;
import org.springframework.stereotype.Service;
import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;

/** 
 * 说明： 类包
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-06
 * @version
 */
@Service("packageService")
public class PackageService implements PackageManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception{
		dao.save("PackageMapper.save", pd);
	}
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception{
		dao.delete("PackageMapper.delete", pd);
	}
	
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception{
		dao.update("PackageMapper.edit", pd);
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("PackageMapper.datalistPage", page);
	}
	
	/**列表(全部)
	 * @param pd
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("PackageMapper.listAll", pd);
	}
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("PackageMapper.findById", pd);
	}
	
	/**批量删除
	 * @param ArrayDATA_IDS
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("PackageMapper.deleteAll", ArrayDATA_IDS);
	}

    /**
     * 查找所有包名
     * @param pd
     * @return
     * @throws Exception
     */
    @Override
    public List<Pack> selectPackageNameList(PageData pd)throws Exception{
        return (List<Pack>) dao.findForList("PackageMapper.listAllPackByPId", pd);
    }


}

