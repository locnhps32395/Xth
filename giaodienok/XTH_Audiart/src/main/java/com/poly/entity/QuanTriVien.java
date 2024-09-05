package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "quan_tri_vien")
@Data
public class QuanTriVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer quanLyId;

    private String tenDangNhap;
    private String ten;
    private String hoVaTen;
    private Integer tuoi;
    private String gioiTinh;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date ngayThangNamSinh;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date ngayVao;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date ngayNghi;

    private String email;
    private String diaChi;
    private String matKhauHash;
    private Integer trangThai;
}
