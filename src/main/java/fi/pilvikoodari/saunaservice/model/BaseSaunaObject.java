package fi.pilvikoodari.saunaservice.model;

import java.util.UUID;

public class BaseSaunaObject {

    protected final UUID id;

    public BaseSaunaObject(UUID id) {
        this.id = id;
    }

    public UUID getId() {
        return id;
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

}
