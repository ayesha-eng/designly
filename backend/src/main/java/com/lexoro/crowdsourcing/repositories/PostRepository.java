package com.lexoro.crowdsourcing.repositories;

import com.lexoro.crowdsourcing.models.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<Post,Integer> {
}
