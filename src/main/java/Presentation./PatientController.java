package Presentation;

import annotation.Controller;
import Utils.ModelAndView;
import annotation.UrlMapping;

@Controller
public class PatientController {

    @UrlMapping(value = "/patientList", method = "GET")
    public ModelAndView patientList(){
         ModelAndView mv = new ModelAndView("patientList");
            return mv;
    }

}
