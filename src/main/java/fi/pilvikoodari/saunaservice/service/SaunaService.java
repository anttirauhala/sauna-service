package fi.pilvikoodari.saunaservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import fi.pilvikoodari.saunaservice.common.SaunaException;
import fi.pilvikoodari.saunaservice.common.Utils;
import fi.pilvikoodari.saunaservice.model.OpeningHour;
import fi.pilvikoodari.saunaservice.model.Sauna;
import fi.pilvikoodari.saunaservice.repository.ISaunaRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class SaunaService implements ISaunaService {

    private ISaunaRepository saunaRepository;

    private List<Sauna> saunas;
    private Date saunaDataLaoded;

    @Autowired
    private Utils utils;

    public SaunaService(@Qualifier("saunaRepository") ISaunaRepository saunaRepo) {
        System.out.println("SaunaService starting...");
        this.saunaRepository = saunaRepo;
        System.out.println("SaunaService started.");
    }

    public List<Sauna> getAllSaunas() {
        if (saunas == null || utils.isSaunaDataExpired(saunaDataLaoded)) {
            saunas = saunaRepository.findAll();
            sortSaunaData(saunas);
            saunaDataLaoded = new Date();
            return saunas;
        } else {
            return saunas;
        }
    }

    @Override
    public ResponseEntity<Sauna> getSauna(String id) {
        Sauna sauna = getAllSaunas().stream().filter(s -> s.getId().toString().equals(id)).findFirst().orElse(null);
        return new ResponseEntity<Sauna>(sauna, sauna != null ? HttpStatus.OK : HttpStatus.NOT_FOUND);
    }

    @Override
    public List<Sauna> getCitySaunas(String city) {
        List<Sauna> saunas = getAllSaunas();
        return getCitySaunas(city, saunas);
    }

    private List<Sauna> getCitySaunas(String city, List<Sauna> saunas) {
        return saunas.stream().filter(s -> s.getCity().equals(city)).toList();
    }

    public Sauna getRandomSauna() throws SaunaException {
        List<String> cities = getCityNames();
        String randomCity = cities.get((int) (Math.random() * cities.size()));
        List<Sauna> citysaunas = getCitySaunas(randomCity);
        if (citysaunas.size() == 0) {
            throw new SaunaException("Resource not found", HttpStatus.NOT_FOUND);
        }
        return citysaunas.get((int) (Math.random() * citysaunas.size()));
    }

    public Sauna getRandomSauna(String city) throws SaunaException {
        Optional<List<Sauna>> citysaunas = Optional.ofNullable(getCitySaunas(city));
        System.out.println("citysaunas: " + citysaunas);
        if (citysaunas.get().size() > 0) {
            System.out.println("citysaunas.get().size(): " + citysaunas.get().size());
            return citysaunas.get().get((int) (Math.random() * citysaunas.get().size()));
        } else {
            System.out.println("Resource not found");
            throw new SaunaException("Resource not found", HttpStatus.NOT_FOUND);
        }
    }

    @Override
    public List<String> getCityNames() {
        return getAllSaunas().stream().map(Sauna::getCity).distinct().toList();
    }

    private void sortSaunaData(List<Sauna> saunas) {
        // Define the order of weekdays
        List<String> weekdaysOrder = List.of("MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
                "SUNDAY");

        // Get today's day of the week
        DayOfWeek today = LocalDate.now().getDayOfWeek();
        String todayString = today.toString().toUpperCase();

        // Comparator for weekdays
        Comparator<OpeningHour> weekdayComparator = Comparator
                .comparingInt(o -> weekdaysOrder.indexOf(o.getWeekday().toString()));

        // Comparator for opening times (assuming opening times are in HH:mm format)
        Comparator<OpeningHour> openingTimeComparator = Comparator.comparing(OpeningHour::getOpeningTime);

        // Comparator for whether the sauna is open today
        Comparator<Sauna> openTodayComparator = Comparator.comparing((Sauna sauna) -> sauna.getOpeningHours().stream()
                .anyMatch(oh -> oh.getWeekday().toString().equals(todayString))).reversed();

        // Sort saunas
        saunas.sort(openTodayComparator
                .thenComparing(Comparator.comparing(Sauna::getName)));

        // Sort opening hours within each sauna
        for (Sauna sauna : saunas) {
            List<OpeningHour> sortedOpeningHours = sauna.getOpeningHours().stream()
                    .sorted(weekdayComparator.thenComparing(openingTimeComparator))
                    .collect(Collectors.toList());
            sauna.setOpeningHours(sortedOpeningHours);
        }
    }
}

// private void sortSaunaData(List<Sauna> saunas) {
// // Define the order of weekdays
// List<String> weekdaysOrder = List.of("MONDAY", "TUESDAY", "WEDNESDAY",
// "THURSDAY", "FRIDAY", "SATURDAY",
// "SUNDAY");

// // Get today's day of the week
// DayOfWeek today = LocalDate.now().getDayOfWeek();
// String todayString = today.toString().toUpperCase();

// // Comparator for weekdays
// Comparator<OpeningHour> weekdayComparator = Comparator.comparingInt(o -> {
// return weekdaysOrder.indexOf(o.getWeekday().toString());
// });

// // Comparator for opening times (assuming opening times are in HH:mm format)
// Comparator<OpeningHour> openingTimeComparator =
// Comparator.comparing((OpeningHour o) -> o.getOpeningTime());

// // Comparator for whether the sauna is open today
// Comparator<Sauna> openTodayComparator = Comparator
// .comparing((Sauna sauna) -> ((Sauna) sauna).getOpeningHours().stream()
// .anyMatch(oh -> oh.getWeekday().toString().equals(todayString)))
// .reversed();

// saunas.sort(openTodayComparator
// .thenComparing(Comparator.comparing(Sauna::getName))
// .thenComparing(sauna -> {
// List<OpeningHour> sortedOpeningHours = sauna.getOpeningHours().stream()
// .sorted(weekdayComparator.thenComparing(openingTimeComparator))
// .collect(Collectors.toList());
// sauna.setOpeningHours(sortedOpeningHours);
// return sauna.getId(); // Use a unique identifier for comparison
// }));

// }
// }
