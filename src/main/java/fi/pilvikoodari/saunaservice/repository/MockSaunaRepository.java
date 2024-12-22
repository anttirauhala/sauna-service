package fi.pilvikoodari.saunaservice.repository;

import java.util.List;
import java.util.UUID;
import java.util.ArrayList;
import java.time.LocalTime;

import org.springframework.stereotype.Repository;

import fi.pilvikoodari.saunaservice.model.OpeningHour;
import fi.pilvikoodari.saunaservice.model.Price;
import fi.pilvikoodari.saunaservice.model.PriceType;
import fi.pilvikoodari.saunaservice.model.Sauna;
import fi.pilvikoodari.saunaservice.model.Weekday;

@Repository("mockSaunaRepository")
public class MockSaunaRepository implements ISaunaRepository {

        @Override
        public List<Sauna> findAll() {
                List<Sauna> saunas = new ArrayList<>();

                // Sauna 1
                UUID saunaId1 = UUID.randomUUID();
                Price adultPrice1 = new Price(UUID.randomUUID(), PriceType.ADULT, 5.00);
                Price childPrice1 = new Price(UUID.randomUUID(), PriceType.CHILD, 2.00);
                List<Price> prices1 = new ArrayList<>();
                prices1.add(adultPrice1);
                prices1.add(childPrice1);
                OpeningHour oh1 = new OpeningHour(
                                UUID.randomUUID(),
                                Weekday.MONDAY,
                                LocalTime.of(12, 00),
                                LocalTime.of(20, 00),
                                prices1);
                Sauna raikka = new Sauna(saunaId1, "Räikkä", "Räikäntie 3", "33470", "Ylöjärvi", new ArrayList<>(),
                                "+358 400 11223344", "www.sauna.fi", "info", false, false);
                raikka.getOpeningHours().add(oh1);
                saunas.add(raikka);

                // Sauna 2
                UUID saunaId2 = UUID.randomUUID();
                Price adultPrice2 = new Price(UUID.randomUUID(), PriceType.ADULT, 6.00);
                Price childPrice2 = new Price(UUID.randomUUID(), PriceType.CHILD, 3.00);
                List<Price> prices2 = new ArrayList<>();
                prices2.add(adultPrice2);
                prices2.add(childPrice2);
                OpeningHour oh2 = new OpeningHour(
                                UUID.randomUUID(),
                                Weekday.TUESDAY,
                                LocalTime.of(10, 00),
                                LocalTime.of(18, 00),
                                prices2);
                Sauna kuuma = new Sauna(saunaId2, "Kuuma", "Kuuma Street 1", "12345", "Helsinki", new ArrayList<>(),
                                "+358 400 7766555", "www.sauna2.fi", "info and info", true, false);

                kuuma.getOpeningHours().add(oh2);
                saunas.add(kuuma);

                // Sauna 3
                UUID saunaId3 = UUID.randomUUID();
                Price adultPrice3 = new Price(UUID.randomUUID(), PriceType.ADULT, 7.00);
                Price childPrice3 = new Price(UUID.randomUUID(), PriceType.CHILD, 3.50);
                List<Price> prices3 = new ArrayList<>();
                prices3.add(adultPrice3);
                prices3.add(childPrice3);
                OpeningHour oh3 = new OpeningHour(
                                UUID.randomUUID(),
                                Weekday.WEDNESDAY,
                                LocalTime.of(14, 00),
                                LocalTime.of(22, 00),
                                prices3);
                Sauna vihta = new Sauna(saunaId3, "Vihta", "Vihta Road 5", "67890", "Tampere", new ArrayList<>(),
                                "+358 500 55662211", "www.sauna3.fi", "Parking very easy", true, true);
                vihta.getOpeningHours().add(oh3);
                saunas.add(vihta);

                return saunas;
        }
}