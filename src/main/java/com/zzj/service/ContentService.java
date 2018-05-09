package com.zzj.service;

import com.zzj.model.Product;

import java.util.List;

public interface ContentService {

    List<Product> listContentsByCno(double cno);
}
