package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.DanhSachPhatBaiHat;
import com.poly.entity.DanhSachPhatBaiHatId;

public interface DanhSachPhatBaiHat_dao extends JpaRepository<DanhSachPhatBaiHat, DanhSachPhatBaiHatId> {
}
