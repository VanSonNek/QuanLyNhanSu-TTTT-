package com.rin.app.controller;

import com.rin.app.dto.request.LoginRequest;
import com.rin.app.entity.Insuranceinformation;
import com.rin.app.entity.SalaryInformation;
import com.rin.app.entity.TaxInformation;
import com.rin.app.entity.User;
import com.rin.app.service.InsuranceInformationService;
import com.rin.app.service.SalaryInformationService;
import com.rin.app.service.TaxInformationService;
import com.rin.app.service.UserService;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class HelloController {
    private final TaxInformationService taxInformationService;
    private final InsuranceInformationService insuranceInformationService;
    private final SalaryInformationService salaryInformationService;
    private final UserService userService;
    @GetMapping
    public String home(Model model) {
        model.addAttribute("loginRequest", new LoginRequest());
        return "redirect:/user/login";
    }

    @GetMapping("register")
    public String regisTer(Model model) {
        model.addAttribute("message", "Hello World");
        return "register";
    }

    @GetMapping("/tax-information")
    public String taxinformation(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");

        List<TaxInformation> taxList = taxInformationService.findByUserId(userId);
        User user = userService.findByUserId(userId);
        List<Insuranceinformation> insuran = insuranceInformationService.findByUserId(userId);

        if (!taxList.isEmpty()) {
            model.addAttribute("tax", taxList.get(0)); // hoặc cho cả list vào model
        }
        if (user != null) {
            model.addAttribute("users", user); // đúng kiểu User
        }
        if (!insuran.isEmpty()) {
            model.addAttribute("insuran", insuran.get(0)); // hoặc cho cả list vào model
        }
        return "tax-information";
    }

    @GetMapping("salary-information")
    public String salaryinformation(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");

        User user = userService.findByUserId(userId);
        if (user != null) {
            model.addAttribute("users", user);
            // Lấy danh sách lương của user đó
            List<SalaryInformation> salaryList = salaryInformationService.getSalaryByUserId(userId);
            model.addAttribute("salaryList", salaryList);
        } else {
            model.addAttribute("salaryList", List.of());
        }

        return "salary-information"; // JSP tên salary-information.jsp
    }

    @GetMapping("insurance-information")
    public String insuranceinformation(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        List<Insuranceinformation> insuran = insuranceInformationService.findByUserId(userId);
        User user = userService.findByUserId(userId);
        if (!insuran.isEmpty()) {
            model.addAttribute("insuran", insuran.get(0)); // hoặc cho cả list vào model
        }
        if (user != null) {
            model.addAttribute("users", user); // đúng kiểu User
        }
        return "insurance-information";
    }
    @GetMapping("personal-information")
    public String personalinformation(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findByUserId(userId);
        if (user != null) {
            model.addAttribute("users", user); // đúng kiểu User
        }
        return "personal-information";
    }
    @GetMapping("home-admin")
    public String homeadmin(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findByUserId(userId);
        if (user != null) {
            model.addAttribute("users", user); // đúng kiểu User
        }
        return "Admin/home";
    }
    @GetMapping("tax-admin")
    public String taxadmin(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        List<TaxInformation> taxList = taxInformationService.findAllTax();
        User user = userService.findByUserId(userId);
        if (user != null) {
            model.addAttribute("users", user); // đúng kiểu User
        }
        model.addAttribute("taxList", taxList);
        return "Admin/tax";
    }

    @GetMapping("insuran-admin")
    public String insuranadmin(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        List<TaxInformation> taxList = taxInformationService.findAllTax();
        List<Insuranceinformation> insuranList = insuranceInformationService.findAllTax();
        User user = userService.findByUserId(userId);
        if (user != null) {
            model.addAttribute("users", user); // đúng kiểu User
        }
        model.addAttribute("taxList", taxList);
        model.addAttribute("insuranList", insuranList);
        return "Admin/insuran";
    }
    @GetMapping("salary-admin")
    public String salaryadmin(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        List<TaxInformation> taxList = taxInformationService.findAllTax();
        List<Insuranceinformation> insuranList = insuranceInformationService.findAllTax();
        List<SalaryInformation> salaryList = salaryInformationService.findAllTax();
        User user = userService.findByUserId(userId);
        if (user != null) {
            model.addAttribute("users", user); // đúng kiểu User
        }
        model.addAttribute("taxList", taxList);
        model.addAttribute("insuranList", insuranList);
        model.addAttribute("salaryList", salaryList);
        return "Admin/salary";
    }
    @GetMapping("staff-admin")
    public String staffadmin(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        List<TaxInformation> taxList = taxInformationService.findAllTax();
        List<Insuranceinformation> insuranList = insuranceInformationService.findAllTax();
        List<SalaryInformation> salaryList = salaryInformationService.findAllTax();

        // Lấy toàn bộ danh sách người dùng
        List<User> allUsers = userService.findAll();

        // 🔥 Lọc chỉ những người có role = "Nhân viên"
        List<User> userlist = allUsers.stream()
                .filter(u -> "Nhân viên".equalsIgnoreCase(u.getRole()))
                .toList();

        User user = userService.findByUserId(userId);

        if (user != null) {
            model.addAttribute("users", user);
        }

        model.addAttribute("userlist", userlist);
        model.addAttribute("taxList", taxList);
        model.addAttribute("insuranList", insuranList);
        model.addAttribute("salaryList", salaryList);
        return "Admin/staff";
    }
    @GetMapping("decentralization-admin")
    public String decentralizationadmin(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        List<TaxInformation> taxList = taxInformationService.findAllTax();
        List<Insuranceinformation> insuranList = insuranceInformationService.findAllTax();
        List<SalaryInformation> salaryList = salaryInformationService.findAllTax();

        // Lấy toàn bộ danh sách người dùng
        List<User> allUsers = userService.findAll();

        // 🔥 Lọc chỉ những người có role = "Nhân viên"
        List<User> userlist = allUsers.stream()
                .filter(u -> "Nhân viên".equalsIgnoreCase(u.getRole()))
                .toList();

        User user = userService.findByUserId(userId);

        if (user != null) {
            model.addAttribute("users", user);
        }

        model.addAttribute("userlist", userlist);
        model.addAttribute("taxList", taxList);
        model.addAttribute("insuranList", insuranList);
        model.addAttribute("salaryList", salaryList);
        return "Admin/decentralization";
    }
    @PostMapping("/update-role")
    public String updateUserRole(
            @RequestParam("userId") Long userId,
            @RequestParam("role") String role
    ) {
        userService.updateUserRole(userId, role);
        return "redirect:/decentralization-admin";
    }


}
