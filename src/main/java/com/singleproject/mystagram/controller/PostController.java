//package com.singleproject.mystagram.controller;
//
//import com.mystagram.service.PostService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import javax.servlet.http.HttpSession;
//
//@Controller
//public class PostController {
//
//    @Autowired
//    private PostService postService;
//
//    @GetMapping("/create-post")
//    public String createPostForm() {
//        return "create-post";
//    }
//
//    @PostMapping("/create-post")
//    public String createPost(@RequestParam("image") MultipartFile file,
//                             @RequestParam("caption") String caption,
//                             HttpSession session,
//                             Model model) {
//        String username = (String) session.getAttribute("user");
//        if (username == null) {
//            return "redirect:/login";
//        }
//
//        if (postService.createPost(username, file, caption)) {
//            return "redirect:/feed";
//        } else {
//            model.addAttribute("error", "Failed to create post");
//            return "create-post";
//        }
//    }
//
//    @GetMapping("/my-posts")
//    public String myPosts(HttpSession session, Model model) {
//        String username = (String) session.getAttribute("user");
//        if (username == null) {
//            return "redirect:/login";
//        }
//
//        model.addAttribute("posts", postService.getPostsByUser(username));
//        return "my-posts";
//    }
//}