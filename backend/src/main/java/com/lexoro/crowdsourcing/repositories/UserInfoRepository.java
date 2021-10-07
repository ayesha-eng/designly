package com.lexoro.crowdsourcing.repositories;

import com.lexoro.crowdsourcing.models.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserInfoRepository extends JpaRepository<UserInfo,Integer> {
}
