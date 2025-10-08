package com.rin.app.service;

import com.rin.app.entity.Insuranceinformation;
import com.rin.app.entity.SalaryInformation;
import com.rin.app.repository.SalaryInformationRepository;
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
public class SalaryInformationService {
    SalaryInformationRepository salaryInformationRepository;

    public List<SalaryInformation> getSalaryByUserId(Long userId) {
        return salaryInformationRepository.findByUser_Id(userId);
    }
    public List<SalaryInformation> findAllTax() {
        return salaryInformationRepository.findAll();
    }
}
