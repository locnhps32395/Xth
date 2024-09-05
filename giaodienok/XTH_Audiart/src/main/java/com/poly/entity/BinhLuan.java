package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "binh_luan")
@Data
public class BinhLuan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer binhLuanId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private NguoiDung user;

    @ManyToOne
    @JoinColumn(name = "bai_hat_id")
    private BaiHat baiHat;

    private String noiDung;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayBinhLuan;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
