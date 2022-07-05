package com.study.cart;

import com.study.contents.ContentsDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {
    private int cartno;
    private int count;
    private int contentsno ;
    private String id ;
    private String size ;
    
    private ContentsDTO cdto;
}
