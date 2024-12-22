package fi.pilvikoodari.saunaservice.common;

import java.util.Date;

import org.springframework.stereotype.Component;

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
