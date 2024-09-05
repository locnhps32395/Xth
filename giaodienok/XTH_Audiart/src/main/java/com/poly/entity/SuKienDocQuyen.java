package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "su_kien_doc_quyen")
@Data
public class SuKienDocQuyen {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer suKienId;

    @ManyToOne
    @JoinColumn(name = "nft_id")
    private Nft nft;

    private String tenSuKien;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date ngaySuKien;

    private String diaDiem;
    private String chiTietBoSung;

    @ManyToOne
    @JoinColumn(name = "admin_id")
    private QuanTriVien admin;

    private Integer trangThai;
}
