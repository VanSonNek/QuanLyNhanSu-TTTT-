package com.rin.app.service;

import com.rin.app.entity.TaxInformation;
import com.rin.app.repository.TaxInformationRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
@Slf4j
@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
public class TaxInformationService {

    TaxInformationRepository taxInformationRepository;

    public List<TaxInformation> findByUserId(Long userId) {
        return taxInformationRepository.findByUserId(userId);
    }
    public List<TaxInformation> findAllTax() {
        return taxInformationRepository.findAll();
    }

}