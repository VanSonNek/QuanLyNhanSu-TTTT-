package com.rin.app.dto.request;

import jakarta.validation.constraints.*;
import lombok.*;
import lombok.experimental.FieldDefaults;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AddstaffRequest {

    @NotBlank(message = "Tên không được để trống")
    String username;

    @NotBlank(message = "Mật khẩu không được để trống")
    @Size(min = 6, message = "Mật khẩu phải có ít nhất 6 ký tự")
    String password;

    @NotNull(message = "Ngày sinh không được để trống")
    LocalDate ngaySinh;

    @NotBlank(message = "Giới tính không được để trống")
    String gioiTinh;

    @NotBlank(message = "CCCD không được để trống")
    @Pattern(regexp = "\\d{12}", message = "CCCD phải đủ 12 số")
    String cccd;

    @NotBlank(message = "Số điện thoại không được để trống")
    @Pattern(regexp = "\\d{10}", message = "Số điện thoại phải đủ 10 số")
    String dienThoai;

    @Email(message = "Email không hợp lệ")
    @NotBlank(message = "Email không được để trống")
    String email;

    String danToc;
    String diaChi;

    // Role cố định là Nhân viên
    String role = "Nhân Viên";
}
