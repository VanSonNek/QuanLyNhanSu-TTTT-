package com.rin.app.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Entity
@Table(name = "tax_information")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class TaxInformation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long taxId; // khóa chính

    @Column(nullable = false, length = 50)
    String taxCode; // mã thuế

    @Column(length = 100)
    String authority; // cơ quan quản lý

    LocalDate registerDate; // ngày đăng ký

    @Column(columnDefinition = "TEXT")
    String note; // ghi chú


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false) // khóa ngoại
            User user;
}
