package com.rin.app.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "salary_information")
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

    @Column(nullable = false, length = 7)
    String month; // VD: "2025-10"

    @Column(nullable = false, precision = 15, scale = 2)
    BigDecimal basicSalary; // Lương cơ bản

    @Column(precision = 15, scale = 2)
    BigDecimal bonus; // Thưởng (có thể null)

    @Column(precision = 15, scale = 2)
    BigDecimal tax; // Thuế khấu trừ

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    User user;

    // 🔹 Không lưu vào DB, chỉ tính khi cần
    @Transient
    public BigDecimal getTotalReceived() {
        BigDecimal tong = basicSalary != null ? basicSalary : BigDecimal.ZERO;
        tong = tong.add(bonus != null ? bonus : BigDecimal.ZERO);
        tong = tong.subtract(tax != null ? tax : BigDecimal.ZERO);
        return tong;
    }
}
