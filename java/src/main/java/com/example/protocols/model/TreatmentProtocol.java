package com.example.protocols.model;

public class TreatmentProtocol {
    private int protocolId;
    private String protocolName;
    private int categoryId;

    public TreatmentProtocol(int protocolId, String protocolName, int categoryId) {
        this.protocolId = protocolId;
        this.protocolName = protocolName;
        this.categoryId = categoryId;
    }

    public TreatmentProtocol() {}

    public int getProtocolId() {
        return protocolId;
    }

    public String getProtocolName() {
        return protocolName;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setProtocolId(int protocolId) {
        this.protocolId = protocolId;
    }

    public void setProtocolName(String protocolName) {
        this.protocolName = protocolName;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
}
