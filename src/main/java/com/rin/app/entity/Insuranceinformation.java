package com.rin.app.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Entity
@Table(name = "insurance-information")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Insuranceinformation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long insuranceId;

    @Column(nullable = false, length = 50)
    String insuranceCode;

    @Column(length = 100)
    String registerPlace;

    @Column(length = 100)
    String issuePlace;

    LocalDate issueDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    User user;
}
