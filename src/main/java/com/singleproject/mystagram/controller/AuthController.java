//package com.singleproject.mystagram.controller;
//
//import com.mystagram.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import javax.servlet.http.HttpSession;
//
//@Controller
//public class AuthController {
//
//    @Autowired
//    private UserService userService;
//
//    @GetMapping("/login")
//    public String loginForm() {
//        return "login";
//    }
//
//    @PostMapping("/login")
//    public String login(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
//        if (userService.authenticate(username, password)) {
//            session.setAttribute("user", username);
//            return "redirect:/feed";
//        } else {
//            model.addAttribute("error", "Invalid username or password");
//            return "login";
//        }
//    }
//
//    @GetMapping("/register")
//    public String registerForm() {
//        return "register";
//    }
//
//    @PostMapping("/register")
//    public String register(@RequestParam String username, @RequestParam String password, @RequestParam String email, Model model) {
//        if (userService.createUser(username, password, email)) {
//            return "redirect:/login";
//        } else {
//            model.addAttribute("error", "Username already exists");
//            return "register";
//        }
//    }
//
//    @GetMapping("/logout")
//    public String logout(HttpSession session) {
//        session.invalidate();
//        return "redirect:/";
//    }
//}