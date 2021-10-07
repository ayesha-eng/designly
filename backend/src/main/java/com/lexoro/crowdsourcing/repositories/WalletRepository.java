package com.lexoro.crowdsourcing.repositories;

import com.lexoro.crowdsourcing.models.Wallet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WalletRepository  extends JpaRepository<Wallet,Integer> {
}
