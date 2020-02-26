package com.moneyclub.controller.core;

import com.moneyclub.controller.MoneyClubController;
import com.moneyclub.dto.DTO;
import com.moneyclub.dto.ValidationErrorDTO;
import com.moneyclub.services.core.IBaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.nio.file.AccessDeniedException;
import java.util.List;
import java.util.function.Function;

@CrossOrigin(origins = "*")
@Controller
public abstract class BaseRestController<T extends DTO, U extends DTO> {

    private static final Logger logger = LoggerFactory.getLogger(MoneyClubController.class);

    protected static final String BASE_URL = "/api";

    protected abstract IBaseService<T, U> baseService();

    @Autowired
    private ErrorParser errorParser;

    /**
     * @return boolean do determine authorization success/failure
     */
    public abstract Boolean checkAuthorization();

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    //@PreAuthorize("this.checkAuthorization()")
    public ResponseEntity<List<T>> getRequests() {
        return ResponseEntity.ok(baseService().getAll());
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    //@PreAuthorize("this.checkAuthorization()")
    public ResponseEntity<DTO> create(@RequestBody @Valid T request, BindingResult errors) {
        validate(request, errors);
        if (errors.hasErrors()) {
            return new ResponseEntity<DTO>(errorParser.processValidationErrors(errors), HttpStatus.UNPROCESSABLE_ENTITY);
        }
        return ResponseEntity.ok(baseService().create(request));
    }

    @RequestMapping(value = "/{requestId}", method = RequestMethod.GET)
    @ResponseBody
    //@PreAuthorize("this.checkAuthorization()")
    public ResponseEntity<DTO> get(@PathVariable Integer requestId) {
        return forExistingRequest(requestId, id ->
                ResponseEntity.ok(baseService().getById(id)));
    }

    @RequestMapping(value = "/{requestId}", method = RequestMethod.PUT)
    @ResponseBody
    //@PreAuthorize("this.checkAuthorization()")
    public ResponseEntity<DTO> modify(@PathVariable Integer requestId, @RequestBody @Valid final T request, final BindingResult errors) {
        return forExistingRequest(requestId, id -> {
            validate(request, errors);
            if (errors.hasErrors()) {
                return new ResponseEntity<DTO>(errorParser.processValidationErrors(errors), HttpStatus.UNPROCESSABLE_ENTITY);
            }
            return ResponseEntity.ok(baseService().update(id, request));
        });
    }

    @RequestMapping(value = "/{requestId}", method = RequestMethod.PATCH)
    @ResponseBody
    //@PreAuthorize("this.checkAuthorization()")
    public ResponseEntity<DTO> patch(@PathVariable Integer requestId, @RequestBody @Valid final U partial, final BindingResult errors) {
        return forExistingRequest(requestId, id -> {
            validatePartial(partial, errors);
            if (errors.hasErrors()) {
                return new ResponseEntity<DTO>(errorParser.processValidationErrors(errors), HttpStatus.UNPROCESSABLE_ENTITY);
            }
            return ResponseEntity.ok(baseService().patch(id, partial));
        });
    }

    @RequestMapping(value = "/{requestId}", method = RequestMethod.DELETE)
    @ResponseBody
    //@PreAuthorize("this.checkAuthorization()")
    public ResponseEntity<DTO> delete(@PathVariable Integer requestId) {
        return forExistingRequest(requestId, id ->
                ResponseEntity.ok(baseService().delete(id)));
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.UNPROCESSABLE_ENTITY)
    @ResponseBody
    public ResponseEntity<ValidationErrorDTO> processValidationError(MethodArgumentNotValidException ex) {
        logger.error(ex.getMessage(), ex);
        return new ResponseEntity<>(errorParser.processValidationErrors(ex.getBindingResult()), HttpStatus.UNPROCESSABLE_ENTITY);
    }

    @ExceptionHandler(AccessDeniedException.class)
    @ResponseBody
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public void handleException(AccessDeniedException ex, HttpServletRequest req) {
        //String user = SecurityContextHolder.getContext().getAuthentication().getName();
        //logger.error("Access denied for user: " + user + " for URL : " + req.getRequestURL());
    }

    /**
     * Validation method for incoming request objects.
     * Ideally Validator implements Spring Validation {@link org.springframework.validation.Validator}
     * <p>
     * Note that as per Spring validation structure incoming errors object is expected to be modified with errored fields & messages
     *
     * @param request A subclass of {@link //com.hallila.BaseRequest}
     * @param errors  BindingResult from Spring Controller
     */
    protected void validate(T request, BindingResult errors) {
        // Not implemented in base class
    }
    /**
     * @param partial A subclass of {@link // com.hallila.BaseRequest}
     * @param errors  BindingResult from Spring Controller
     */
    protected void validatePartial(U partial, BindingResult errors) {
        // Not implemented in base class
    }

    private ResponseEntity<DTO> forExistingRequest(Integer requestId, Function<Integer, ResponseEntity<DTO>> f) {
        if (baseService().getById(requestId) != null) {
            return f.apply(requestId);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

}
