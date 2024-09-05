package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "danh_sach_phat")
@Data
public class DanhSachPhat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer maDanhSach;

    private String tenDanhSach;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayTao;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayXoa;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private NguoiDung user;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
