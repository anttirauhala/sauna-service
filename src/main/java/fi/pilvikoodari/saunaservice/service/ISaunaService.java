package fi.pilvikoodari.saunaservice.service;

import java.util.List;

import org.springframework.http.ResponseEntity;

import fi.pilvikoodari.saunaservice.model.Sauna;

public interface ISaunaService {
    public List<Sauna> getAllSaunas();

    public List<Sauna> getCitySaunas(String city);

    public List<String> getCityNames();

    public Sauna getRandomSauna();

    public Sauna getRandomSauna(String city);

    public ResponseEntity<Sauna> getSauna(String id);
}
