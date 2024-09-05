package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "bai_hat")
@Data
public class BaiHat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer baiHatId;

    @ManyToOne
    @JoinColumn(name = "nghe_si_id")
    private NgheSi ngheSi;

    private String tieuDe;
    private String fileMidiBeat;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date ngayPhatHanh;

    private String anh;
    private String nguoiTao;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
    private Integer soLuotNghe;
    private Integer soLuotThich;
    private String loai;
}
