package com.rin.app.repository;

import com.rin.app.entity.TaxInformation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TaxInformationRepository extends JpaRepository<TaxInformation, Long> {
    List<TaxInformation> findByUserId(Long userId);
}
