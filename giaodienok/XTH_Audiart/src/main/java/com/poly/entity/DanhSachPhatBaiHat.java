package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "danh_sach_phat_bai_hat")
@IdClass(DanhSachPhatBaiHatId.class)
@Data
public class DanhSachPhatBaiHat {
    @Id
    @Column(name = "bai_hat_id")
    private Integer maDanhSach;

    @Id
    @Column(name = "bai_hat_id")
    private Integer baiHatId;

    @ManyToOne
    @JoinColumn(name = "ma_danh_sach", insertable = false, updatable = false)
    private DanhSachPhat danhSachPhat;

    @ManyToOne
    @JoinColumn(name = "bai_hat_id", insertable = false, updatable = false)
    private BaiHat baiHat;
}
