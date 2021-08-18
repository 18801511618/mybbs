package com.dfby.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class Boardtype {
    private Integer boardtypeid;

    private String boardtypename;

    private List<Board> boardList;


}