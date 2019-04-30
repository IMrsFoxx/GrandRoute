package com.example.sweater.controller;

import com.example.sweater.domain.User;
import com.example.sweater.domain.dto.CaptchaResponseDto;
import com.example.sweater.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import javax.validation.Valid;
import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {

    private final static String CAPTCHA_URL = "https://www.google.com/recaptcha/api/siteverify?secret=%s&response=%s";

    @Autowired
    private UserService userService;
    @Value("${recaptcha.secret}")
    private String secret;



    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(
            @RequestParam ("password2")String passwordConfirmation,
            @RequestParam("g-recaptcha-response") String captchaResponce,
            @Valid User user,
            BindingResult bindingResult,
            Model model
    ) {

        String url = String.format(CAPTCHA_URL, secret, captchaResponce);
        CaptchaResponseDto response = restTemplate.postForObject(url, Collections.emptyList(), CaptchaResponseDto.class);

        if (!response.isSuccess()) {
            model.addAttribute("captchaError", "Fill captcha");
        }

        if(!response.isSuccess()){
            model.addAttribute("captchaError","Fill captcha");
        }
        boolean isConfirmEmpty = StringUtils.isEmpty(passwordConfirmation);
        if(isConfirmEmpty){
            model.addAttribute("password2Error","Password confirm can't be empty");
        }
        if (user.getPassword() != null && !user.getPassword().equals(passwordConfirmation)) {
            model.addAttribute("passwordError", "Passwords are different!");
        }

        if (isConfirmEmpty||bindingResult.hasErrors()||!response.isSuccess()) {
            Map<String, String> errors = ControllerUtills.getErrors(bindingResult);

            model.mergeAttributes(errors);

            return "registration";
        }

        if(!userService.addUser (user)){
            model.addAttribute ("message","User exist!");
            return "registration";
        }

        return "redirect:/login";
    }

    @GetMapping("/activate/{code}")
    public String activate(Model model, @PathVariable String code){
        boolean isActiveated = userService.activateUser(code);
        if(isActiveated){
            model.addAttribute ("messageType","success");
            model.addAttribute ("message","User succsesfully activated");
         }else{
            model.addAttribute ("messageType","danger");
            model.addAttribute ("message","Activation code not found");
        }
        return "login";
    }
}
