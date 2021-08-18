package com.dfby.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class Board {
    private Integer boardid;
    private String boardname;
    private Integer parentid;
    private Integer topiccount;
    private Topic lasttopic;
    private List<Topic> topicList;
}