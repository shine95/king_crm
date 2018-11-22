package com.fh.entity.system;


import java.util.Date;

/**
 *
 * 类名称：包名
 * 类描述：
 * @author FH QQ 313596790[千帆i]
 * 作者单位：
 * 联系方式：
 * 创建时间：2018年6月10日
 * @version 1.0
 */
public class Pack {

    private int id;
    private String name;
    private String remark;
    private String modefier;
    private Date createTime;
    private int creator;
    private Date updateTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getModefier() {
        return modefier;
    }

    public void setModefier(String modefier) {
        this.modefier = modefier;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public int getCreator() {
        return creator;
    }

    public void setCreator(int creator) {
        this.creator = creator;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
