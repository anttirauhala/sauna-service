package fi.pilvikoodari.saunaservice.repository;

import java.util.List;

import fi.pilvikoodari.saunaservice.model.Sauna;

public interface ISaunaRepository {
    public List<Sauna> findAll();
}
