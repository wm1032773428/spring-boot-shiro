package com.dream.gold.persistent.model;

import javax.persistence.*;

@Table(name = "permission_role")
public class PermissionRole {
    /**
     * ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 角色id
     */
    private Long rid;

    /**
     * 权限id
     */
    private Long pid;

    /**
     * 获取ID
     *
     * @return id - ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置ID
     *
     * @param id ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取角色id
     *
     * @return rid - 角色id
     */
    public Long getRid() {
        return rid;
    }

    /**
     * 设置角色id
     *
     * @param rid 角色id
     */
    public void setRid(Long rid) {
        this.rid = rid;
    }

    /**
     * 获取权限id
     *
     * @return pid - 权限id
     */
    public Long getPid() {
        return pid;
    }

    /**
     * 设置权限id
     *
     * @param pid 权限id
     */
    public void setPid(Long pid) {
        this.pid = pid;
    }
}