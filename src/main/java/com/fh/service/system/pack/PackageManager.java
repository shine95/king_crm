package com.fh.service.system.pack;

import java.util.List;
import com.fh.entity.Page;
import com.fh.entity.system.Pack;
import com.fh.util.PageData;

/** 
 * 说明： 类包接口
 * 创建人：Shine Q845196784
 * 创建时间：2018-11-06
 * @version
 */
public interface PackageManager{

	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception;
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception;
	
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception;
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	public List<PageData> list(Page page)throws Exception;
	
	/**列表(全部)
	 * @param pd
	 * @throws Exception
	 */
	public List<PageData> listAll(PageData pd)throws Exception;
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception;
	
	/**批量删除
	 * @param ArrayDATA_IDS
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception;

	/**获取包名列表
	 * @throws Exception
	 */
    public List<Pack> selectPackageNameList(PageData pd)throws Exception;
	
}

