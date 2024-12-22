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
    private String phone;
    private String webPage;
    private String info;
    private boolean kiosk;
    private boolean restaurant;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWebPage() {
        return webPage;
    }

    public void setWebPage(String webPage) {
        this.webPage = webPage;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public boolean isKiosk() {
        return kiosk;
    }

    public void setKiosk(boolean kiosk) {
        this.kiosk = kiosk;
    }

    public boolean isRestaurant() {
        return restaurant;
    }

    public void setRestaurant(boolean restaurant) {
        this.restaurant = restaurant;
    }

    public Sauna(UUID id, String name, String streetAddress, String postalCode, String city,
            List<OpeningHour> openingHours, String phone, String webPage, String info, boolean kiosk,
            boolean restaurant) {
        super(id);
        this.name = name;
        this.streetAddress = streetAddress;
        this.postalCode = postalCode;
        this.city = city;
        this.openingHours = openingHours;
        this.phone = phone;
        this.webPage = webPage;
        this.info = info;
        this.kiosk = kiosk;
        this.restaurant = restaurant;
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
