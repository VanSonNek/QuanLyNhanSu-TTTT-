package com.rin.app.service;

import com.rin.app.entity.User;
import com.rin.app.repository.UserRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

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
}
