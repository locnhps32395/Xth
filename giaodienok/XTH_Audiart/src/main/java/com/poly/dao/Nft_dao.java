package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Nft;

public interface Nft_dao extends JpaRepository<Nft, Integer> {
}
