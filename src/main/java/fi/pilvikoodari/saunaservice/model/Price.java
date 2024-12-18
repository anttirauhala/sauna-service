package fi.pilvikoodari.saunaservice.model;

import java.util.UUID;

public class Price extends BaseSaunaObject {
    private UUID id;
    private PriceType priceType;
    private double price;

    public Price(UUID id, PriceType priceType, double price) {
        super(id);
        this.priceType = priceType;
        this.price = price;
    }

    public Price(UUID id) {
        super(id);
    }

    @Override
    public String toString() {
        return String.format("Price %s: is: %s, %s", id, priceType, price);
    }

    public PriceType getPriceType() {
        return priceType;
    }

    public double getPrice() {
        return price;
    }

    public void setPriceType(PriceType priceType) {
        this.priceType = priceType;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
