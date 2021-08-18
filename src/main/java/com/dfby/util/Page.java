package com.dfby.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Page {
    private int pageNo;
    private int pageSize;
    private int rowCount;
    private int pageCount;
    private List<Object> pageList;
    private boolean firstPage;
    private  boolean lastPage;

    public Page(){
        this.pageNo=1;
        this.pageSize=5;
    }
    public int getPageCount(){
        this.pageCount=rowCount/pageSize;
        if(rowCount%pageSize!=0){
            this.pageCount++;
        }
        return this.pageCount;
    }
    public void getPageNo(int pageNo){
        if(pageNo>getPageCount()){
            pageNo=pageCount;
        }
        if(pageNo<1){
            pageNo=1;
        }
        this.pageNo=pageNo;
    }

    public boolean isFirstPage() {
        return this.pageNo==1?true:false;
    }
    public boolean isLastPage(){
        return this.pageNo==this.pageCount?true:false;
    }
}
