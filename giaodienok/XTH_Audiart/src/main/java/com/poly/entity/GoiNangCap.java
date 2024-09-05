package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "goi_nang_cap")
@Data
public class GoiNangCap {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer goiNangCapId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private NguoiDung user;

    private String tenGoi;
    private Integer congDonThang;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayMua;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date hetHan;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
