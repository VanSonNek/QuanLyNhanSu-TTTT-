package com.rin.app.controller;

import com.rin.app.dto.request.LoginRequest;
import com.rin.app.entity.User;
import com.rin.app.service.UserService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class UserController {
UserService userService;
    @GetMapping("login")
    public String helloController(Model model) {
        model.addAttribute("loginRequest", new LoginRequest());
        log.warn("Ban dang try cap trang login");
        return "/login";
    }
    @GetMapping("logout")
    public String logout(jakarta.servlet.http.HttpSession session) {
        // Xoá toàn bộ session
        session.invalidate();
        log.warn("Đã đăng xuất thành công");
        // Chuyển hướng về trang login
        return "redirect:/user/login";
    }


    @PostMapping("login")
    public String login(@ModelAttribute("loginRequest") LoginRequest loginRequest
                        ,BindingResult bindingResult
                        , Model model
                        ,  jakarta.servlet.http.HttpSession session) {
        try {
            User user = userService.login(loginRequest.getEmail(), loginRequest.getPassword());
            session.setAttribute("userId", user.getId());
            session.setAttribute("username", user.getUsername());
            session.setAttribute("role", user.getRole());

            // (Tuỳ chọn) in log để kiểm tra
            log.warn("Đăng nhập thành công: userId = " + user.getRole());
            return "redirect:/tax-information";
        } catch (Exception e) {
            return "/login";
        }
    }
}
