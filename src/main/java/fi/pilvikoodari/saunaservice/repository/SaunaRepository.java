package fi.pilvikoodari.saunaservice.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import fi.pilvikoodari.saunaservice.model.Sauna;

@Repository("saunaRepository")
public class SaunaRepository implements ISaunaRepository {

    private JdbcTemplate jdbc;

    public JdbcTemplate getJdbc() {
        return jdbc;
    }

    @Autowired
    public void setJdbc(JdbcTemplate jdbcTemplate) {
        this.jdbc = jdbcTemplate;
    }

    public List<Sauna> findAll() {
        String sql = "SELECT " +
                "sauna_private.sauna.id as sauna_id, sauna_private.sauna.name, sauna_private.sauna.street_address, " +
                "sauna_private.sauna.postal_code, sauna_private.sauna.city, " +
                "sauna_private.opening_hour.id as opening_hour_id, " +
                "sauna_private.opening_hour.weekday, sauna_private.opening_hour.opening_time, " +
                "sauna_private.opening_hour.closing_time, " +
                "sauna_private.price.id as price_id, sauna_private.price.price_type, sauna_private.price.price " +
                "FROM sauna_private.sauna " +
                "LEFT OUTER JOIN sauna_private.opening_hour ON sauna.id = opening_hour.sauna_id " +
                "LEFT OUTER JOIN sauna_private.price ON opening_hour.id = price.opening_hour_id " +
                "ORDER BY sauna_id ASC, weekday asc, opening_time ASC, price_type ASC";
        List<Sauna> allSaunas = jdbc.query(sql, new SaunaRowExtractor());
        return allSaunas;
    }

}
