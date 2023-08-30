package com.example.protocols.dao;

import com.example.protocols.model.TreatmentProtocol;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcTreatmentProtocolDao implements TreatmentProtocolDao {
    private final JdbcTemplate jdbcTemplate;
    public JdbcTreatmentProtocolDao(JdbcTemplate jdbctemplate) {
        this.jdbcTemplate = jdbctemplate;
    }
    @Override
    public List<TreatmentProtocol> getAllProtocols() {
        List<TreatmentProtocol> treatmentProtocols = new ArrayList<>();
        String sql = "SELECT * FROM treatment_protocol";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            TreatmentProtocol treatmentProtocol = mapRowToTreatmentProtocol(results);
            treatmentProtocols.add((treatmentProtocol));
        }
        return treatmentProtocols;
    }
    @Override
    public TreatmentProtocol getProtocolById(int protocolId) {
        TreatmentProtocol treatmentProtocol = null;
        String sql = "SELECT * FROM treatment_protocol WHERE protocol_id = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, protocolId);
        if (result.next()) {
            treatmentProtocol = mapRowToTreatmentProtocol(result);
        }
        return treatmentProtocol;
    }
    @Override
    public List<TreatmentProtocol> getProtocolsByCategory(int categoryId) {
        List<TreatmentProtocol> treatmentProtocols = new ArrayList<>();
        String sql = "SELECT * FROM treatment_protocol WHERE category_id = (SELECT category_id FROM treatment_protocol_category WHERE category_name = ?)";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, categoryId);
        while (results.next()) {
            TreatmentProtocol treatmentProtocol = mapRowToTreatmentProtocol(results);
            treatmentProtocols.add(treatmentProtocol);
        }
        return treatmentProtocols;
    }
    private TreatmentProtocol mapRowToTreatmentProtocol(SqlRowSet sq) {
        TreatmentProtocol treatmentProtocol = new TreatmentProtocol();
        treatmentProtocol.setProtocolId(sq.getInt("protocol_id"));
        treatmentProtocol.setProtocolName(sq.getString("protocol_name"));
        treatmentProtocol.setCategoryId(sq.getInt("category_id"));
        return treatmentProtocol;
    }
}
