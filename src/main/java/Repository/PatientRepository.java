package Repository;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import Model.Patient;

public interface PatientRepository extends JpaRepository<Patient, Integer>{
   

    
}