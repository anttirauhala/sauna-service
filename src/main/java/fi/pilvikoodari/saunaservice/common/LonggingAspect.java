package fi.pilvikoodari.saunaservice.common;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LonggingAspect {
    private static final Logger LOGGER = LoggerFactory.getLogger(LonggingAspect.class);

    @AfterReturning("execution(* fi.pilvikoodari.saunaservice.repository.SaunaRepository.findAll())")
    public void logLoading() {
        LOGGER.info("Data loaded from the database");
    }
}
