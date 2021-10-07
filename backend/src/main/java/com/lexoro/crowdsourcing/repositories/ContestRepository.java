package com.lexoro.crowdsourcing.repositories;

import com.lexoro.crowdsourcing.models.Contest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContestRepository extends JpaRepository<Contest,Integer> {
}
