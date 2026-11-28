package Presentation;

import Utils.ModelAndView;
import Utils.Session;
import annotation.Auth;
import annotation.Controller;
import annotation.WebAPI;
import annotation.UrlMapping;

@Controller
public class AuthController {
    @UrlMapping(value = "/", method = "GET")
    public ModelAndView loginForm(){
         ModelAndView mv = new ModelAndView("loginForm");
            return mv;
    }
    

}