package fi.pilvikoodari.saunaservice.model;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class Sauna extends BaseSaunaObject {
    private String name;
    private String streetAddress;
    private String postalCode;
    private String city;
    private List<OpeningHour> openingHours;

    public Sauna(UUID id, String name, String streetAddress, String postalCode, String city,
            List<OpeningHour> openingHours) {
        super(id);
        this.name = name;
        this.streetAddress = streetAddress;
        this.postalCode = postalCode;
        this.city = city;
        this.openingHours = openingHours;
    }

    public Sauna(UUID id) {
        super(id);
    }

    public String toString() {
        return String.format("Sauna %s: %s %s, %s, %s", id, name, streetAddress, postalCode, city);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    public UUID getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public String getCity() {
        return city;
    }

    public List<OpeningHour> getOpeningHours() {
        return openingHours;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setOpeningHours(List<OpeningHour> openingHours) {
        this.openingHours = openingHours;
    }

    public void addOpeningHour(OpeningHour openingHour) {
        if (openingHours == null) {
            openingHours = new ArrayList<OpeningHour>();
            openingHours.add(openingHour);
        } else {
            openingHours.add(openingHour);
        }
    }
}
