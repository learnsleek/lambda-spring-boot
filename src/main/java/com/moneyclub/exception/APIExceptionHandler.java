package com.moneyclub.exception;

import com.moneyclub.constant.ErrorCode;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.time.ZoneId;
import java.time.ZonedDateTime;

@ControllerAdvice
public class APIExceptionHandler extends ResponseEntityExceptionHandler {

    private final String BUSINESS_LOGIC_EXCEPTION = "BUSINESS_LOGIC_EXCEPTION";
    private final String DATABASE_LEVEL_EXCEPTION = "DATABASE_LEVEL_EXCEPTION";
    private final String OTHER_EXCEPTION = "OTHER_EXCEPTION";

    @ExceptionHandler(value = APIRequestException.class)
    public ResponseEntity<Object> handleExeption(APIRequestException apiReqException){
        HttpStatus exception = HttpStatus.EXPECTATION_FAILED;
        APIException apiException = new APIException();
        if(apiReqException != null &&
                apiReqException.getCause() instanceof BusinessException) {
            apiException.setErrorCode(
                    ErrorCode.valueOf(BUSINESS_LOGIC_EXCEPTION).getErrorCode());
            apiException.setErrorMessage(BUSINESS_LOGIC_EXCEPTION);
        }else if(apiReqException != null &&
                apiReqException.getCause() instanceof PersistentException){
            apiException.setErrorCode(
                    ErrorCode.valueOf(DATABASE_LEVEL_EXCEPTION).getErrorCode());
            apiException.setErrorMessage(DATABASE_LEVEL_EXCEPTION);
        }else{
            apiException.setErrorCode(
                    ErrorCode.valueOf(OTHER_EXCEPTION).getErrorCode());
            apiException.setErrorMessage(OTHER_EXCEPTION);
        }
        apiException.setHttpStatus(exception);
        apiException.setTimestamp(ZonedDateTime.now(ZoneId.of("Asia/Kolkata")));

       return new ResponseEntity<>(apiException, exception);
    }

   /* @ExceptionHandler(RecordNotFoundException.class)
    public final ResponseEntity<Object> handleRecordNotFoundException(RecordNotFoundException ex, WebRequest request) {
        List<String> details = new ArrayList<>();
        details.add(ex.getLocalizedMessage());
        ErrorResponse error = new ErrorResponse("Record Not Found", details);
        return new ResponseEntity(error, HttpStatus.NOT_FOUND);
    }*/
}
