package demo.controller;

import demo.model.Institution;
import demo.repository.InstitutionRepository;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/api/institutions")
public class InstitutionController {

    @Autowired
    private InstitutionRepository institutionRepository;
    @GetMapping("/{name}")
    public Institution getInstitutionByName(@PathVariable String name) {
        return institutionRepository.findByName(name)
                .orElseThrow(() -> new MyResourceNotFoundException("Institution not found with name: " + name));
    }
}
