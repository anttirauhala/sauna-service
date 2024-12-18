package fi.pilvikoodari.saunaservice.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.lang.NonNull;

import fi.pilvikoodari.saunaservice.model.OpeningHour;
import fi.pilvikoodari.saunaservice.model.Price;
import fi.pilvikoodari.saunaservice.model.PriceType;
import fi.pilvikoodari.saunaservice.model.Sauna;
import fi.pilvikoodari.saunaservice.model.Weekday;

public class SaunaRowExtractor implements ResultSetExtractor<List<Sauna>> {

    @Override
    public List<Sauna> extractData(@NonNull ResultSet rs) throws SQLException, DataAccessException {
        Map<UUID, Sauna> saunaMap = new HashMap<>();
        Map<UUID, OpeningHour> openingHourMap = new HashMap<>();
        List<Sauna> saunas = new ArrayList<>();

        while (rs.next()) {
            UUID saunaId = UUID.fromString(rs.getString("sauna_id"));
            Sauna sauna = saunaMap.get(saunaId);

            if (sauna == null) {
                sauna = new Sauna(saunaId);
                sauna.setName(rs.getString("name"));
                sauna.setStreetAddress(rs.getString("street_address"));
                sauna.setPostalCode(rs.getString("postal_code"));
                sauna.setCity(rs.getString("city"));
                saunaMap.put(saunaId, sauna);
                saunas.add(sauna);
            }

            Optional<String> ohIdStr = Optional.ofNullable(rs.getString("opening_hour_id"));
            UUID openingHourId = ohIdStr.isPresent() ? UUID.fromString(ohIdStr.get()) : null;
            if (openingHourId != null) {
                OpeningHour openingHour = openingHourMap.get(openingHourId);
                if (openingHour == null) {
                    openingHour = new OpeningHour(openingHourId);
                    openingHour.setWeekday(Weekday.valueOf(rs.getString("weekday")));
                    openingHour.setOpeningTime(LocalTime.parse(rs.getString("opening_time")));
                    openingHour.setClosingTime(LocalTime.parse(rs.getString("closing_time")));
                    openingHourMap.put(openingHourId, openingHour);
                    sauna.addOpeningHour(openingHour);
                }
                Optional<String> priceIdStr = Optional.ofNullable(rs.getString("price_id"));
                UUID priceId = priceIdStr.isPresent() ? UUID.fromString(priceIdStr.get()) : null;
                if (priceId != null) {
                    Price price = new Price(priceId);
                    price.setPrice(rs.getDouble("price"));
                    price.setPriceType(PriceType.valueOf(rs.getString("price_type")));
                    openingHour.addPrice(price);
                }
            }
        }

        return saunas;

    }
}