package com.bankDigital.controllers;

import com.bankDigital.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import  org.springframework.validation.BindingResult;

import javax.validation.Valid;

@Controller
@RequestMapping("home")

public class RegisterController {
    @GetMapping("/inscription")
    public ModelAndView getRegister(){
        ModelAndView getRegisterPage = new ModelAndView("register");
        System.out.println("page d'inscription");
        getRegisterPage.addObject("PageTitle","inscription");
        return  getRegisterPage;
    }

    @PostMapping("/inscription")
    public  ModelAndView register(@Valid @ModelAttribute("registerUser") User user,
                             BindingResult  result,
                              @RequestParam("first_name") String first_name,
                              @RequestParam("last_name") String last_name,
                              @RequestParam("email") String email,
                              @RequestParam("password") String password,
                              @RequestParam("confirm_password") String confirm_password)
    {
        ModelAndView registrationPage= new ModelAndView("register");
        if(result.hasErrors()&&confirm_password.isEmpty()){
            registrationPage.addObject("confirm_pass","ce champs est obligatoire");
            return registrationPage;
        }
        return registrationPage;

    }
}
