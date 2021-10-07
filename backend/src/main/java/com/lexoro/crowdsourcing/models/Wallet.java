package com.lexoro.crowdsourcing.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity

public class Wallet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private float totalAmount;
}
