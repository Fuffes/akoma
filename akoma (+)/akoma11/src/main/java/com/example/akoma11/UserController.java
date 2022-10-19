package com.example.akoma11;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Map;

@Controller
@RequestMapping("/patient")
@PreAuthorize("hasAuthority('ADMIN')")
public class UserController {
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private DoseRepo doseRepo;

    @GetMapping
    public String userList(Model model) {
        model.addAttribute("users", userRepo.findAll());
        model.addAttribute("doses", doseRepo.findAll());

        return "userList";
    }

    @GetMapping("{us}")
    public String userEditForm(@PathVariable User us, Model model) {

        model.addAttribute("us", us);
      // model.addAttribute("doses", doseRepo.findByAuthor(String.valueOf(us.i));
        model.addAttribute("doses", doseRepo.findAll());

        return "userEdit";
    }

    @PostMapping("{us}/{dos}")
    public String doseSend(@PathVariable User us,
                               @RequestParam String comment,
                               @PathVariable Dose dos,
                               Model model) {
        dos.setComment(comment);
        dos.setStatus("Checked");
        model.addAttribute("us", us);
        model.addAttribute("dose", dos);

        return "userMessages";
    }
    @GetMapping("{us}/{dos}")
    public String userEditForm(@PathVariable User us,
                               @PathVariable Dose dos,
                               Model model) {

        model.addAttribute("us", us);
        model.addAttribute("dose", dos);

        return "userMessages";
    }

    @PostMapping("{us}")
    public String userSave(
            @PathVariable Long us,
            @RequestParam("id") Dose doses,
            @RequestParam("comment") String comment,
            @RequestParam Map<String, String> form,
            @RequestParam("doseId") Long id
    ) {

        doses.setComment(comment);

        doseRepo.save(doses);

        return "redirect:/patient/{us}";


    }


    }






