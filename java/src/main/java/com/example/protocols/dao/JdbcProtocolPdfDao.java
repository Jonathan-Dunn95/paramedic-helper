package com.example.protocols.dao;

import com.example.protocols.model.ProtocolPdf;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcProtocolPdfDao implements ProtocolPdfDao {
    private final JdbcTemplate jdbcTemplate;
    public JdbcProtocolPdfDao(JdbcTemplate jdbctemplate) {
        this.jdbcTemplate = jdbctemplate;
    }
    @Override
    public List<ProtocolPdf> getAllProtocols() {
        List<ProtocolPdf> protocols = new ArrayList<>();
        String sql = "SELECT * FROM protocol_pdf";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            ProtocolPdf protocol = mapRowToProtocolPdf(results);
            protocols.add(protocol);
        }
        return protocols;
    }
    private ProtocolPdf mapRowToProtocolPdf(SqlRowSet sq) {
        ProtocolPdf protocol = new ProtocolPdf();
        protocol.setPdfId(sq.getInt("pdf_id"));
        protocol.setProtocolId(sq.getInt("protocol_id"));
        protocol.setFilePath(sq.getString("file_path"));
        return protocol;
    }
}
