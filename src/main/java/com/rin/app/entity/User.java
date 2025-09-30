package com.rin.app.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
@ToString(exclude = {"taxInformations"}) // tránh vòng lặp khi in
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(nullable = false, unique = true, length = 50)
    String username;

    @Column(nullable = false, length = 200)
    String password;

    @Column(nullable = false)
    LocalDate ngaySinh;

    @Column(nullable = false, length = 10)
    String gioiTinh;

    @Column(nullable = false, unique = true, length = 12)
    String cccd;

    @Column(nullable = false, length = 15)
    String dienThoai;

    @Column(nullable = false, unique = true, length = 100)
    String email;

    @Column(length = 30)
    String danToc;

    @Column(length = 255)
    String diaChi;


    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    List<TaxInformation> taxInformations = new ArrayList<>();
}
