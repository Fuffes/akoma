package com.example.akoma11;


import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface DoseRepo extends CrudRepository<Dose, Long> {

    List<Dose> findAll();
   Optional<Dose> findById(Integer id);


}
