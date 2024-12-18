package fi.pilvikoodari.saunaservice.model;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class OpeningHour extends BaseSaunaObject {
    private Weekday weekday;
    private LocalTime openingTime;
    private LocalTime closingTime;
    private List<Price> prices;

    public OpeningHour(UUID id, Weekday weekday, LocalTime openingTime, LocalTime closingTime, List<Price> prices) {
        super(id);
        this.weekday = weekday;
        this.openingTime = openingTime;
        this.closingTime = closingTime;
        this.prices = prices;
    }

    public OpeningHour(UUID id) {
        super(id);
    }

    public String toString() {
        return String.format("OpeningHour %s: %s %s - %s", super.id, weekday, openingTime, closingTime);
    }

    public Weekday getWeekday() {
        return weekday;
    }

    public LocalTime getOpeningTime() {
        return openingTime;
    }

    public LocalTime getClosingTime() {
        return closingTime;
    }

    public List<Price> getPrices() {
        return prices;
    }

    public void setWeekday(Weekday weekday) {
        this.weekday = weekday;
    }

    public void setOpeningTime(LocalTime openingTime) {
        this.openingTime = openingTime;
    }

    public void setClosingTime(LocalTime closingTime) {
        this.closingTime = closingTime;
    }

    public void setPrices(List<Price> prices) {
        this.prices = prices;
    }

    public void addPrice(Price price) {
        if (prices == null) {
            prices = new ArrayList<Price>();
            prices.add(price);
        } else {
            prices.add(price);
        }
    }

}
