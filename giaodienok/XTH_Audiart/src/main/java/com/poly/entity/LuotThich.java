package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "luot_thich")
@Data
public class LuotThich {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer luotThichId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private NguoiDung user;

    @ManyToOne
    @JoinColumn(name = "bai_hat_id")
    private BaiHat baiHat;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayThich;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
