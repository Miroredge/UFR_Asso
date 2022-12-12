package io.swagger.api;

import io.swagger.model.BookEntry;
import io.swagger.model.BookEntryFound;
import io.swagger.model.Errors;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.*;
import javax.validation.Valid;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")
@RestController
public class BookEntryApiController implements BookEntryApi {

    private static final Logger log = LoggerFactory.getLogger(BookEntryApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public BookEntryApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<Errors> deleteBookEntry(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=1,max=8) @Parameter(in = ParameterIn.PATH, description = "Technical Unique ID of the `BookEntry` operation (Base36 encoding) (https://en.wikipedia.org/wiki/Base36)", required=true, schema=@Schema()) @PathVariable("bookEntryId") String bookEntryId) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<Errors>(objectMapper.readValue("{\n  \"errors\" : [ {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  }, {\n    \"documentationUrl\" : \"http://www.google.fr\",\n    \"errorType\" : \"functional\",\n    \"errorMessage\" : \"MYSQL - Error during Creation of Updatable Snapshot\",\n    \"errorCode\" : \"MYSQL-2345\",\n    \"tips\" : \"Google can help you to find how to solve this issue\",\n    \"errorParams\" : [ \"T124Z\", \"G18A8\" ],\n    \"errorLevel\" : \"info\"\n  } ]\n}", Errors.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<Errors>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<Errors>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<BookEntryFound> getBookEntryByID(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=1,max=8) @Parameter(in = ParameterIn.PATH, description = "Technical Unique ID of the `BookEntry` (Base36 encoding) (https://en.wikipedia.org/wiki/Base36)", required=true, schema=@Schema()) @PathVariable("bookEntryId") String bookEntryId) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<BookEntryFound>(objectMapper.readValue("\"\"", BookEntryFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<BookEntryFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<BookEntryFound>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<BookEntryFound> overwriteBookEntryByID(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=1,max=8) @Parameter(in = ParameterIn.PATH, description = "Technical Unique ID of the `BookEntry` (Base36 encoding) (https://en.wikipedia.org/wiki/Base36)", required=true, schema=@Schema()) @PathVariable("bookEntryId") String bookEntryId,@Parameter(in = ParameterIn.DEFAULT, description = "'BookEntry' detailled content", required=true, schema=@Schema()) @Valid @RequestBody BookEntry body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<BookEntryFound>(objectMapper.readValue("\"\"", BookEntryFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<BookEntryFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<BookEntryFound>(HttpStatus.NOT_IMPLEMENTED);
    }

}
