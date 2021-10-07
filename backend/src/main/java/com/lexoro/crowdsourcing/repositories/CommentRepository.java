package com.lexoro.crowdsourcing.repositories;

import com.lexoro.crowdsourcing.models.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentRepository extends JpaRepository<Comment,Integer> {
}
