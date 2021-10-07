package com.lexoro.crowdsourcing.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Contest {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int contestArranger;
    @ElementCollection
    private List<Integer> contestants;
    private String startingDate;
    private String endingDate;
    private String image;
    private String winnerId;
    private String resultDay;
    @OneToMany(fetch = FetchType.LAZY)
    private List<Post> posts;

}
