package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.Patient;
import Model.Sexe;
import Repository.SexeRepository;

@Service
public class SexeService {

    @Autowired 
    private SexeRepository sexeRepository;

      public List<Sexe> getAllSexe(){
        return sexeRepository.findAll();
    }
   
}
