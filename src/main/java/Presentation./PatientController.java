package Presentation;

import annotation.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import Model.Patient;
import Service.PatientService;
import Utils.ModelAndView;
import annotation.UrlMapping;

@Controller
public class PatientController {

    @UrlMapping(value = "/patientList", method = "GET")
    public ModelAndView patientList(ApplicationContext springContext){
        ApplicationContext context = (ApplicationContext) springContext;
        PatientService patientService = context.getBean(PatientService.class);
        ModelAndView mv = new ModelAndView("patientList");
        List<Patient> patients = patientService.getAllPatient();
        mv.addItem("patients", patients);
        return mv;
    }

}
