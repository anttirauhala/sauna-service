package fi.pilvikoodari.saunaservice.common;

import org.springframework.stereotype.Component;

import fi.pilvikoodari.saunaservice.model.OpeningHour;
import fi.pilvikoodari.saunaservice.model.Price;
import fi.pilvikoodari.saunaservice.model.Sauna;

import java.util.Comparator;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class Utils {

    public boolean isSaunaDataExpired(Date saunadataLoadedTime) {
        if (saunadataLoadedTime == null) {
            return true;
        }
        long now = new Date().getTime();
        long loaded = saunadataLoadedTime.getTime();
        long diff = now - loaded;
        long minutes = diff / (1000) / 60;
        return minutes > Constants.SAUNADATA_REFRESH_INTERVAL_MINUTES;
    }
}
