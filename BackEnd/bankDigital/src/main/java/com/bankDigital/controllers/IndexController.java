package com.bankDigital.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class IndexController
{
     @GetMapping("/")
     public ModelAndView getIndex()
     {    ModelAndView getIndexPage= new ModelAndView();
          getIndexPage.addObject("PageTitle","home");
          getIndexPage.setViewName("index");
          System.out.println("la 1ère page : index");
          return getIndexPage;}
     @GetMapping("/connexion")
     public  ModelAndView getLogin(){
          ModelAndView getLoginPage = new ModelAndView("login");
          System.out.println("page de connexion");
          getLoginPage.addObject("PageTitle","connexion");
          return  getLoginPage;
     }

     @GetMapping("/erreur")
     public  ModelAndView getError(){
          ModelAndView getErrorPage = new ModelAndView("error");
          System.out.println("page d'erreur");
          getErrorPage.addObject("PageTitle","erreur");
          return  getErrorPage;
     }

    @GetMapping("/verify")
    public  ModelAndView getVerify(){
        ModelAndView getVerifyPage = new ModelAndView("login");
        System.out.println("page de verification mail");
        getVerifyPage.addObject("PageTitle","mail");
        return  getVerifyPage;
    }


}
