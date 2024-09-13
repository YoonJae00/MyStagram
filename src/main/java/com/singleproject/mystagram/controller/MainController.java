package com.singleproject.mystagram.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("message", "Welcome to Mystagram");
        return "index";
    }

    @GetMapping("/feed")
    public String feed(Model model) {
        return "feed";
    }

    @GetMapping("/profile")
    public String profile(Model model) {
        return "profile";
    }

    @GetMapping("/post")
    public String postForm() {
        return "post";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }
}