/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.Document;
import com.doat.recruitment.jpa.repository.DocumentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DocumentService {
    @Autowired
    DocumentRepository repository;

    public void saveDocument(Document document){
        repository.save(document);
    }

    public Document findDocument(Integer doc_id){
        Optional<Document> optional=repository.findById(doc_id);
        if (optional.isPresent()){
            return optional.get();
        }
        return null;

    }
}
