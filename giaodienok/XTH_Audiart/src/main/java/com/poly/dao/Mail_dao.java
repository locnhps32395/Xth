package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Mail;

public interface Mail_dao extends JpaRepository<Mail, Integer> {
}
