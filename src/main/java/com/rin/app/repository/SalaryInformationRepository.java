package com.rin.app.repository;

import com.rin.app.entity.SalaryInformation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SalaryInformationRepository extends JpaRepository<SalaryInformation, Long> {
    List<SalaryInformation> findByUser_Id(Long userId);
}
