package com.dfby.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
    private Integer replyid;

    private String title;

    private String content;

    private Date publishtime;

    private Date modifytime;

    private Integer uid;

    private Integer topicid;

}