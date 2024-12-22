package fi.pilvikoodari.saunaservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fi.pilvikoodari.saunaservice.common.SaunaException;
import fi.pilvikoodari.saunaservice.model.Sauna;
import fi.pilvikoodari.saunaservice.service.ISaunaService;
import fi.pilvikoodari.saunaservice.service.SaunaService;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/sauna")
public class SaunaServiceController {

    private final ISaunaService saunaService;

    public SaunaServiceController(@Qualifier("saunaService") SaunaService saunaService) {
        this.saunaService = saunaService;
    }

    @GetMapping("/list")
    public List<Sauna> getAllSaunas() {
        return saunaService.getAllSaunas();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Sauna> geSaunaById(@PathVariable String id) {
        return saunaService.getSauna(id);
    }

    @GetMapping("list/city/{cityId}")
    public List<Sauna> getSaunasByCity(@PathVariable String cityId) {
        return saunaService.getCitySaunas(cityId);
    }

    @GetMapping("/random")
    public Sauna getRandomSauna() {
        return saunaService.getRandomSauna();
    }

    @GetMapping("/random/{city}")
    public ResponseEntity<Sauna> getRandomSauna(String city) {
        System.out.println("CITY RANDOM");
        try {
            return new ResponseEntity<>(saunaService.getRandomSauna(city), HttpStatus.OK);
        } catch (SaunaException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}