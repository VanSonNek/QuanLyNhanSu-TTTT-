package com.rin.app.repository;

import com.rin.app.entity.Insuranceinformation;
import com.rin.app.entity.TaxInformation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InsuranceInformationRepository extends JpaRepository<Insuranceinformation, Long> {
    List<Insuranceinformation> findByUserId(Long userId);
}
