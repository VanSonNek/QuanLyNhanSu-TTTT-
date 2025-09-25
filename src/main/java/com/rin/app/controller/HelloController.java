package com.rin.app.controller;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class HelloController {

    @GetMapping
    public String home(Model model) {
        model.addAttribute("message", "Trang chủ");
        return "Admin/home";
    }

    @GetMapping("login")
    public String helloController(Model model) {
        model.addAttribute("message", "Hello World");
        return "login";
    }
    @GetMapping("register")
    public String regisTer(Model model) {
        model.addAttribute("message", "Hello World");
        return "register";
    }
    @GetMapping("tax-information")
    public String taxinformation(Model model) {
        model.addAttribute("message", "Hello World");
        return "tax-information";
    }
    @GetMapping("salary-information")
    public String salaryinformation(Model model) {
        model.addAttribute("message", "Hello World");
        return "salary-information";
    }
    @GetMapping("insurance-information")
    public String insuranceinformation(Model model) {
        model.addAttribute("message", "Hello World");
        return "insurance-information";
    }
    @GetMapping("personal-information")
    public String personalinformation(Model model) {
        model.addAttribute("message", "Hello World");
        return "personal-information";
    }
    @GetMapping("home-admin")
    public String homeadmin(Model model) {
        model.addAttribute("message", "Hello World");
        return "Admin/home";
    }
}
