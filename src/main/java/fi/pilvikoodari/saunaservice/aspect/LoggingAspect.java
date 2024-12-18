package fi.pilvikoodari.saunaservice.aspect;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {
    private static final Logger LOGGER = LoggerFactory.getLogger(LoggingAspect.class);

    @AfterReturning("execution(* fi.pilvikoodari.saunaservice.service.SaunaService.getAllSaunas())")
    public void logLoading() {
        LOGGER.info("Sauna list fetched");
    }
}
