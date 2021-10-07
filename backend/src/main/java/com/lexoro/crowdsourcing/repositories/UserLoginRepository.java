package com.lexoro.crowdsourcing.repositories;

import com.lexoro.crowdsourcing.models.UserLogin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserLoginRepository extends JpaRepository<UserLogin,Integer> {
}
