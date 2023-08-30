package com.example.protocols.dao;

import com.example.protocols.model.TreatmentProtocolCategory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcTreatmentProtocolCategoryDao implements TreatmentProtocolCategoryDao {
    private final JdbcTemplate jdbcTemplate;

    public JdbcTreatmentProtocolCategoryDao(JdbcTemplate jdbctemplate) {
        this.jdbcTemplate = jdbctemplate;
    }
    @Override
    public List<TreatmentProtocolCategory> getAllCategories() {
        List<TreatmentProtocolCategory> treatmentProtocolCategories = new ArrayList<>();
        String sql = "SELECT * FROM treatment_protocol_category";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            TreatmentProtocolCategory treatmentProtocolCategory = mapRowToTreatmentCategoryProtocol(results);
            treatmentProtocolCategories.add(treatmentProtocolCategory);
        }
        return treatmentProtocolCategories;
    }
    @Override
    public TreatmentProtocolCategory getCategoryById(int categoryId) {
        TreatmentProtocolCategory treatmentProtocolCategory = null;
        String sql = "SELECT * FROM treatment_protocol_category WHERE category_id = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, categoryId);
        if (result.next()) {
            treatmentProtocolCategory = mapRowToTreatmentCategoryProtocol(result);
        }
        return treatmentProtocolCategory;
    }
    private TreatmentProtocolCategory mapRowToTreatmentCategoryProtocol(SqlRowSet sq) {
        TreatmentProtocolCategory treatmentProtocolCategory = new TreatmentProtocolCategory();
        treatmentProtocolCategory.setCategoryId(sq.getInt("category_id"));
        treatmentProtocolCategory.setCategoryName(sq.getString("category_name"));
        return treatmentProtocolCategory;
    }
}
