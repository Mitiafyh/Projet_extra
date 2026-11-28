package Presentation;

import annotation.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import Model.Patient;
import Model.Sexe;
import Service.PatientService;
import Service.SexeService;
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

    @UrlMapping(value = "/patientForm", method = "GET")
    public ModelAndView patientForm(ApplicationContext springContext){
        ApplicationContext context = (ApplicationContext) springContext;
        SexeService sexeService = context.getBean(SexeService.class);
        ModelAndView mv = new ModelAndView("patientForm");
        List<Sexe> sexe = sexeService.getAllSexe();
        mv.addItem("sexe", sexe);
        return mv;
    }

    @UrlMapping(value = "/register", method = "POST")
    public ModelAndView patientRegister(ApplicationContext springContext,Patient patient){
        ApplicationContext context = (ApplicationContext) springContext;
        PatientService patientService = context.getBean(PatientService.class);
        ModelAndView mv = new ModelAndView("patientForm");
        int id = patientService.save(patient);
        if(id > 0){
            mv.addItem("message", "Patient enregistré avec succès");
        }else{
            mv.addItem("erreur", "Erreur lors de l'enregistrement du patient");
        }
        return mv;
    }


    @UrlMapping(value = "/deletePatient", method = "GET")
    public ModelAndView deletePatient(ApplicationContext springContext, int id){
        ApplicationContext context = (ApplicationContext) springContext;
        PatientService patientService = context.getBean(PatientService.class);
        patientService.deletePatient(id);
        return new ModelAndView("redirect:/patientList");
    }

    @UrlMapping(value = "/editPatient", method = "GET")
    public ModelAndView editPatient(ApplicationContext springContext, int id){
        ApplicationContext context = (ApplicationContext) springContext;
        PatientService patientService = context.getBean(PatientService.class);
        SexeService sexeService = context.getBean(SexeService.class);
        Patient patient = patientService.getPatientById(id);
        List<Sexe> sexes = sexeService.getAllSexe();
        ModelAndView mv = new ModelAndView("patientEditForm");
        mv.addItem("patient",patient);
        mv.addItem("sexe", sexes);
        return mv;
    }

    @UrlMapping(value = "/registerEdit", method = "POST")
    public ModelAndView registerEdit(ApplicationContext springContext,Patient patient){
        ApplicationContext context = (ApplicationContext) springContext;
        PatientService patientService = context.getBean(PatientService.class);
        int id = patientService.update(patient);
        int targetId = (id > 0) ? id : patient.getId();
        if (id > 0) {
        return new ModelAndView("redirect:/editPatient?id=" + targetId + "&message=Patient+modifie+avec+succes");
        }
        return new ModelAndView("redirect:/editPatient?id=" + targetId + "&erreur=Erreur+lors+de+la+modification");
    }
    
}
