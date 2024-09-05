package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "nft")
@Data
public class Nft {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer nftId;

    @ManyToOne
    @JoinColumn(name = "bai_hat_id")
    private BaiHat baiHat;

    private String tokenId;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayDuocKhaiThac;

    private Integer metadata;
    private Double giaBanDau;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
