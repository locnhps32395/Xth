package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "giao_dich")
@Data
public class GiaoDich {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer giaoDichId;

    @ManyToOne
    @JoinColumn(name = "nft_id")
    private Nft nft;

    @ManyToOne
    @JoinColumn(name = "nguoi_mua_id")
    private NguoiDung nguoiMua;

    @ManyToOne
    @JoinColumn(name = "nguoi_ban_id")
    private NguoiDung nguoiBan;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayGiaoDich;

    private Double gia;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
