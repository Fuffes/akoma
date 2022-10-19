package com.example.akoma11;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/profile")
public class ProfileController {
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private DoseRepo doseRepo;
    @Autowired
    private UserService userService;

    @GetMapping("{id}")
    public String main( Model model ) {
        Iterable<Dose> doses = doseRepo.findAll();

            doses = doseRepo.findAll();

        model.addAttribute("doses", doses);

        return "profile";
    }





    @GetMapping("{id}/edit")
    public String userEditForm(@PathVariable User id, Model model) {
        model.addAttribute("docs", userRepo.findAll());
        return "profileEdit";
    }


    @PostMapping("{id}/edit")
    public String updateProfile(
            @AuthenticationPrincipal User user,
            @RequestParam String password,
            @RequestParam String email,
            @RequestParam String doc,
            @RequestParam String pr_inh,
            @RequestParam String re_inh

    ) {
        userService.updateProfile(user, password, email, doc, pr_inh, re_inh );

        return "redirect:/profile/{id}";
    }





}
