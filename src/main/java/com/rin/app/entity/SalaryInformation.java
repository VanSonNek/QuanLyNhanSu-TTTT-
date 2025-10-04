package com.rin.app.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.math.BigDecimal;
import java.time.YearMonth;

@Entity
@Table(name = "SalaryInformation")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
@ToString(exclude = {"user"}) // tránh vòng lặp khi in
public class SalaryInformation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long salaryId;

    @Column(nullable = false)
    YearMonth month; // Tháng lương (VD: 2025-10)

    @Column(nullable = false, precision = 15, scale = 2)
    BigDecimal basicSalary; // Lương cơ bản

    @Column(precision = 15, scale = 2)
    BigDecimal bonus; // Thưởng (có thể null)

    @Column(precision = 15, scale = 2)
    BigDecimal tax; // Thuế khấu trừ

    @Column(precision = 15, scale = 2)
    BigDecimal totalReceived; // Tổng thực nhận (lương sau thuế + thưởng)

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    User user;
}
