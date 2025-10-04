package com.rin.app.service;


import com.rin.app.entity.Insuranceinformation;
import com.rin.app.entity.TaxInformation;
import com.rin.app.repository.InsuranceInformationRepository;
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
public class InsuranceInformationService {
    InsuranceInformationRepository insuranceInformationRepository;
    public List<Insuranceinformation> findByUserId(Long userId) {
        return insuranceInformationRepository.findByUserId(userId);
    }
}
