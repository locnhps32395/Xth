package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "mail")
@Data
public class Mail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer mailId;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date thoiGian;

    private String chiTietThongTin;
    private String email;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private NguoiDung user;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;
}
