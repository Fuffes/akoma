package com.example.akoma11;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Map;
import java.util.UUID;

@Controller

public class MainController {

    private final DoseRepo doseRepo;
    public MainController(DoseRepo doseRepo) {
        this.doseRepo = doseRepo;
    }
    @Value("${upload.path}")
    private String uploadPath;



    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "index";
    }


    @GetMapping("/test")
    public String test(Map<String, Object> model) {
        return "test";
    }

    @GetMapping("/dose")
    public String doze(Map<String, Object> model) {
        return "dose";
    }

    @GetMapping("/inst")
    public String inst(Map<String, Object> model) {
        return "inst";
    }




    @PostMapping("/dose")
    public String add( @AuthenticationPrincipal User user,
                       @RequestParam String inh_type,
                       @RequestParam("date")
                           @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date,
                       @RequestParam String dosDoc,
                       @RequestParam String trigger, Map<String, Object> model,
                       @RequestParam("file") MultipartFile file) throws IOException {
        Dose dose = new Dose(user,inh_type, trigger, date, dosDoc);

        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            dose.setFilename(resultFilename);
        }
        dose.setDosDoc(dosDoc);

        dose.setStatus("Placed");
        doseRepo.save(dose);

        return "dose";
    }

    @PostMapping("/test")
    public String addTest(@RequestParam String text, @RequestParam String tag, Map<String, Object> model) {

        return "test";
    }

    /*@PostMapping("filter")
    public String filter(@RequestParam String filter, Map<String, Object> model) {
        Iterable<Dose> messages;

        if (filter != null && !filter.isEmpty()) {
            messages = doseRepo.findByAuthor(filter);
        } else {
            messages = doseRepo.findAll();
        }

        model.put("messages", messages);

        return "home";}*/

}
