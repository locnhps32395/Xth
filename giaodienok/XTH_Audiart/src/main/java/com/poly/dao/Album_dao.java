package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Album;

public interface Album_dao extends JpaRepository<Album, Integer> {
}
