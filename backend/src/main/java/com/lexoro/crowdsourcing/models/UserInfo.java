package com.lexoro.crowdsourcing.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.nio.MappedByteBuffer;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class UserInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String userName;
    private String firstName;
    private String lastName;
    private String adress;
    private String phoneNum;
    private String email;
    private String profilePicture;
    @OneToOne
    @JoinColumn(name ="user_login_id", referencedColumnName = "id")
    private UserLogin userLogin;
    @OneToOne
    @JoinColumn(name="wallet_id",referencedColumnName = "id")
    private Wallet wallet;

}
