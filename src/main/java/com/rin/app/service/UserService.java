package com.rin.app.service;

import com.rin.app.entity.Insuranceinformation;
import com.rin.app.entity.TaxInformation;
import com.rin.app.entity.User;
import com.rin.app.repository.UserRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
public class UserService {
    UserRepository userRepository;

    public User login(String email, String password) {
        User user = userRepository.findByEmail(email);
        if (user == null) {
            throw new RuntimeException("User not found");
        }
        if (!user.getPassword().equals(password)) {
            throw new RuntimeException("Wrong password");
        }
        return user; // trả về user nếu đúng
    }

    public User findByUserId(Long userId) {
        return userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found with id " + userId));
    }
    public List<User> findAll() {
        return userRepository.findAll();
    }
    public void updateUserRole(Long userId, String newRole) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy người dùng có ID: " + userId));

        user.setRole(newRole);
        userRepository.save(user);
    }
    public void save(User user) {
        userRepository.save(user);
    }


}
