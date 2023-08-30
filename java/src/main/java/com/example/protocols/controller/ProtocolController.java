package com.example.protocols.controller;

import com.example.protocols.dao.ProtocolPdfDao;
import com.example.protocols.dao.TreatmentProtocolCategoryDao;
import com.example.protocols.dao.TreatmentProtocolDao;
import com.example.protocols.model.ProtocolPdf;
import com.example.protocols.model.TreatmentProtocol;
import com.example.protocols.model.TreatmentProtocolCategory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ProtocolController {
    private TreatmentProtocolCategoryDao treatmentProtocolCategoryDao;
    private TreatmentProtocolDao treatmentProtocolDao;
    private ProtocolPdfDao protocolPdfDao;
    public ProtocolController(TreatmentProtocolCategoryDao treatmentProtocolCategoryDao, TreatmentProtocolDao treatmentProtocolDao, ProtocolPdfDao protocolPdfDao) {
        this.treatmentProtocolCategoryDao = treatmentProtocolCategoryDao;
        this.treatmentProtocolDao = treatmentProtocolDao;
        this.protocolPdfDao = protocolPdfDao;
    }
    @ResponseStatus(HttpStatus.ACCEPTED)
    @RequestMapping(path = "/treatment_protocol_category", method = RequestMethod.GET)
    public List<TreatmentProtocolCategory> listAllCategories() {
        return treatmentProtocolCategoryDao.getAllCategories();
    }
    @ResponseStatus(HttpStatus.ACCEPTED)
    @RequestMapping(path = "/treatment_protocol_category/{categoryId}", method = RequestMethod.GET)
    public TreatmentProtocolCategory getCategoryById(@PathVariable int categoryId) {
        return treatmentProtocolCategoryDao.getCategoryById(categoryId);
    }
    @ResponseStatus(HttpStatus.ACCEPTED)
    @RequestMapping(path = "/treatment_protocol", method = RequestMethod.GET)
    public List<TreatmentProtocol> findAllProtocols() {
        return treatmentProtocolDao.getAllProtocols();
    }
    @ResponseStatus(HttpStatus.ACCEPTED)
    @RequestMapping(path = "/treatment_protocol/protocol/{protocolId}", method = RequestMethod.GET)
    public TreatmentProtocol findProtocolById(@PathVariable int protocolId) {
        return treatmentProtocolDao.getProtocolById(protocolId);
    }
    @ResponseStatus(HttpStatus.ACCEPTED)
    @RequestMapping(path = "/treatment_protocol/category/{categoryId}", method = RequestMethod.GET)
    public List<TreatmentProtocol> listProtocolsByCategory(@PathVariable int categoryId) {
        return treatmentProtocolDao.getProtocolsByCategory(categoryId);
    }
    @ResponseStatus(HttpStatus.ACCEPTED)
    @RequestMapping(path = "/protocol_pdf", method = RequestMethod.GET)
    public List<ProtocolPdf> listAllProtocols() {
        return protocolPdfDao.getAllProtocols();
    }
}
