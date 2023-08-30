package com.example.protocols.dao;

import com.example.protocols.model.TreatmentProtocol;
import com.example.protocols.model.TreatmentProtocolCategory;

import java.util.List;

public interface TreatmentProtocolDao {
    List<TreatmentProtocol> getAllProtocols();
    TreatmentProtocol getProtocolById(int protocolId);
    List<TreatmentProtocol> getProtocolsByCategory(int categoryId);

}
