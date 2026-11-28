package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.Patient;
import Repository.PatientRepository;

@Service
public class PatientService{
    
    @Autowired 
    private PatientRepository patientRepository;

    public List<Patient> getAllPatient(){
        return patientRepository.findAll();
    }
    public int save(Patient p){
        patientRepository.save(p);
        return p.getId();
    }
    public void deletePatient(int id){
        patientRepository.deleteById(id);
    }
    public Patient getPatientById(int id){
        return patientRepository.findById(id).orElse(null);
    }

    public int update(Patient p){
        patientRepository.save(p);
        return p.getId();
    }
    
}