package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Entity
@Table(name = "nguoi_dung")
@Data
public class NguoiDung {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userId;

    private String tenDangNhap;
    private String anhNguoiDung;
    private String gioiTinh;
    private String matKhauHash;
    private String diaChiVi;

    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayTao;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
