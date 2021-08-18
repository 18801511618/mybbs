package com.dfby.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Topic {
    private Integer topicid;

    private String title;

    private String content;

    private Date publishtime;

    private Date modifytime;

    private Integer uid;

    private Integer boardid;
    private User user;
    private Reply replytitle;
}