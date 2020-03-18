/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.AddressDetails;
import com.doat.recruitment.jpa.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AddressService {
    @Autowired
    AddressRepository addressRepository;

    public void saveNewAddress(AddressDetails addressDetails) {
        addressRepository.save(addressDetails);
    }

    public List<AddressDetails> showAllAddresslDetails() {
        List<AddressDetails> address = new ArrayList<>();
        addressRepository.findAll().forEach(address::add);
        return address;
    }
}
