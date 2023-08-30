package com.example.protocols.model;

public class ProtocolPdf {
    private int pdfId;
    private int protocolId;
    private String filePath;

    public ProtocolPdf(int pdfId, int protocolId, String filePath) {
        this.pdfId = pdfId;
        this.protocolId = protocolId;
        this.filePath = filePath;
    }

    public ProtocolPdf() {}

    public int getPdfId() {
        return pdfId;
    }

    public int getProtocolId() {
        return protocolId;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setPdfId(int pdfId) {
        this.pdfId = pdfId;
    }

    public void setProtocolId(int protocolId) {
        this.protocolId = protocolId;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
