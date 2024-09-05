package com.poly.entity;

import java.io.Serializable;
import java.util.Objects;

public class DanhSachPhatBaiHatId implements Serializable {
    private Integer maDanhSach; 
    private Integer baiHatId;

    // Getters, setters, equals, and hashCode methods

    public Integer getMaDanhSach() {
        return maDanhSach;
    }

    public void setMaDanhSach(Integer maDanhSach) {
        this.maDanhSach = maDanhSach;
    }

    public Integer getBaiHatId() {
        return baiHatId;
    }

    public void setBaiHatId(Integer baiHatId) {
        this.baiHatId = baiHatId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DanhSachPhatBaiHatId that = (DanhSachPhatBaiHatId) o;
        return Objects.equals(maDanhSach, that.maDanhSach) && Objects.equals(baiHatId, that.baiHatId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(maDanhSach, baiHatId);
    }
}
