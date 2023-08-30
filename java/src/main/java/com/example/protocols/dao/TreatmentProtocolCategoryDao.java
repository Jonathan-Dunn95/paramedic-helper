package com.example.protocols.dao;

import com.example.protocols.model.TreatmentProtocolCategory;

import java.util.List;

public interface TreatmentProtocolCategoryDao {
    List<TreatmentProtocolCategory> getAllCategories();
    TreatmentProtocolCategory getCategoryById(int categoryId);
}
