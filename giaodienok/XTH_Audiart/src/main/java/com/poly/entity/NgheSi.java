package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "nghe_si")
@Data
public class NgheSi {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ngheSiId;

    private String ten;
    private String anh;
    private String gioiTinh;
    private String email;
    private String tieuSu;
    private String mangXaHoi;
    private String diaChiVi;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
