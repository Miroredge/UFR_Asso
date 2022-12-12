package io.swagger.api;

import io.swagger.model.BookEntry;
import io.swagger.model.BookEntryCreated;
import io.swagger.model.Errors;
import io.swagger.model.Event;
import io.swagger.model.EventCreated;
import io.swagger.model.InlineResponse200;
import io.swagger.model.InlineResponse2001;
import io.swagger.model.InlineResponse2002;
import io.swagger.model.InlineResponse2003;
import io.swagger.model.InlineResponse2004;
import io.swagger.model.InlineResponse2005;
import io.swagger.model.Newsletter;
import io.swagger.model.NewsletterCreated;
import io.swagger.model.OpeningHour;
import io.swagger.model.OpeningHourCreated;
import io.swagger.model.OrganisationCreated;
import io.swagger.model.OrganisationFound;
import io.swagger.model.OrganisationsBody;
import io.swagger.model.OrganisationsSiretNumberBody;
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
public class OrganisationsApiController implements OrganisationsApi {

    private static final Logger log = LoggerFactory.getLogger(OrganisationsApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public OrganisationsApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<BookEntryCreated> createBookEntry(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Parameter(in = ParameterIn.DEFAULT, description = "'BookEntry' detailled content", required=true, schema=@Schema()) @Valid @RequestBody BookEntry body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<BookEntryCreated>(objectMapper.readValue("\"\"", BookEntryCreated.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<BookEntryCreated>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<BookEntryCreated>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<EventCreated> createEvent(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the 'Organisation'", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Parameter(in = ParameterIn.DEFAULT, description = "Event detailled content", required=true, schema=@Schema()) @Valid @RequestBody Event body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<EventCreated>(objectMapper.readValue("\"\"", EventCreated.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<EventCreated>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<EventCreated>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<NewsletterCreated> createNewsletter(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Parameter(in = ParameterIn.DEFAULT, description = "'Newsletter' detailled content", required=true, schema=@Schema()) @Valid @RequestBody Newsletter body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<NewsletterCreated>(objectMapper.readValue("\"\"", NewsletterCreated.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<NewsletterCreated>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<NewsletterCreated>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<OpeningHourCreated> createOpeningHour(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Parameter(in = ParameterIn.DEFAULT, description = "'OpeningHour' detailled content", required=true, schema=@Schema()) @Valid @RequestBody OpeningHour body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<OpeningHourCreated>(objectMapper.readValue("\"\"", OpeningHourCreated.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<OpeningHourCreated>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<OpeningHourCreated>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<OrganisationCreated> createOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Parameter(in = ParameterIn.DEFAULT, description = "Organisation detailled content", required=true, schema=@Schema()) @Valid @RequestBody OrganisationsBody body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<OrganisationCreated>(objectMapper.readValue("\"\"", OrganisationCreated.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<OrganisationCreated>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<OrganisationCreated>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<Errors> deleteOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber) {
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

    public ResponseEntity<InlineResponse2004> getListOfBookEntriesOfOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Min(1)@Parameter(in = ParameterIn.QUERY, description = "Indicates the page number to be returned. `pageSize` may be used with `page` to set the number of items per page. " ,schema=@Schema(allowableValues={  }, minimum="1"
, defaultValue="1")) @Valid @RequestParam(value = "page", required = false, defaultValue="1") Integer page,@Min(1) @Max(50) @Parameter(in = ParameterIn.QUERY, description = "Indicates the size of each page (number of items per page). Can only be used together with `page`. " ,schema=@Schema(allowableValues={  }, minimum="1", maximum="50"
, defaultValue="10")) @Valid @RequestParam(value = "pageSize", required = false, defaultValue="10") Integer pageSize) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<InlineResponse2004>(objectMapper.readValue("{\n  \"_links\" : {\n    \"last\" : { },\n    \"self\" : { },\n    \"first\" : { }\n  },\n  \"_embedded\" : {\n    \"bookEntries\" : [ \"\", \"\" ]\n  },\n  \"_pagination\" : {\n    \"pageSize\" : 1,\n    \"page\" : 6,\n    \"totalElements\" : 0\n  }\n}", InlineResponse2004.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<InlineResponse2004>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<InlineResponse2004>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<InlineResponse2005> getListOfEventsOfOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Min(1)@Parameter(in = ParameterIn.QUERY, description = "Indicates the page number to be returned. `pageSize` may be used with `page` to set the number of items per page. " ,schema=@Schema(allowableValues={  }, minimum="1"
, defaultValue="1")) @Valid @RequestParam(value = "page", required = false, defaultValue="1") Integer page,@Min(1) @Max(50) @Parameter(in = ParameterIn.QUERY, description = "Indicates the size of each page (number of items per page). Can only be used together with `page`. " ,schema=@Schema(allowableValues={  }, minimum="1", maximum="50"
, defaultValue="10")) @Valid @RequestParam(value = "pageSize", required = false, defaultValue="10") Integer pageSize) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<InlineResponse2005>(objectMapper.readValue("{\n  \"_links\" : {\n    \"last\" : { },\n    \"self\" : { },\n    \"first\" : { }\n  },\n  \"_embedded\" : {\n    \"events\" : [ \"\", \"\" ]\n  },\n  \"_pagination\" : {\n    \"pageSize\" : 1,\n    \"page\" : 6,\n    \"totalElements\" : 0\n  }\n}", InlineResponse2005.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<InlineResponse2005>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<InlineResponse2005>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<InlineResponse2003> getListOfNewslettersOfOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Min(1)@Parameter(in = ParameterIn.QUERY, description = "Indicates the page number to be returned. `pageSize` may be used with `page` to set the number of items per page. " ,schema=@Schema(allowableValues={  }, minimum="1"
, defaultValue="1")) @Valid @RequestParam(value = "page", required = false, defaultValue="1") Integer page,@Min(1) @Max(50) @Parameter(in = ParameterIn.QUERY, description = "Indicates the size of each page (number of items per page). Can only be used together with `page`. " ,schema=@Schema(allowableValues={  }, minimum="1", maximum="50"
, defaultValue="10")) @Valid @RequestParam(value = "pageSize", required = false, defaultValue="10") Integer pageSize) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<InlineResponse2003>(objectMapper.readValue("{\n  \"_links\" : {\n    \"last\" : { },\n    \"self\" : { },\n    \"first\" : { }\n  },\n  \"_embedded\" : {\n    \"events\" : [ \"\", \"\" ]\n  },\n  \"_pagination\" : {\n    \"pageSize\" : 1,\n    \"page\" : 6,\n    \"totalElements\" : 0\n  }\n}", InlineResponse2003.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<InlineResponse2003>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<InlineResponse2003>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<InlineResponse2002> getListOfOpeningHourOfOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Min(1)@Parameter(in = ParameterIn.QUERY, description = "Indicates the page number to be returned. `pageSize` may be used with `page` to set the number of items per page. " ,schema=@Schema(allowableValues={  }, minimum="1"
, defaultValue="1")) @Valid @RequestParam(value = "page", required = false, defaultValue="1") Integer page,@Min(1) @Max(50) @Parameter(in = ParameterIn.QUERY, description = "Indicates the size of each page (number of items per page). Can only be used together with `page`. " ,schema=@Schema(allowableValues={  }, minimum="1", maximum="50"
, defaultValue="10")) @Valid @RequestParam(value = "pageSize", required = false, defaultValue="10") Integer pageSize) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<InlineResponse2002>(objectMapper.readValue("{\n  \"_links\" : {\n    \"last\" : { },\n    \"self\" : { },\n    \"first\" : { }\n  },\n  \"_embedded\" : {\n    \"openingHours\" : [ \"\", \"\" ]\n  },\n  \"_pagination\" : {\n    \"pageSize\" : 1,\n    \"page\" : 6,\n    \"totalElements\" : 0\n  }\n}", InlineResponse2002.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<InlineResponse2002>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<InlineResponse2002>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<InlineResponse200> getListOfOrganisationsFoundPageBasedPagination(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Parameter(in = ParameterIn.QUERY, description = "Search for all `Organisation` matching the given value (case insensitive). Wildcard '\\*' can be used.  " ,schema=@Schema()) @Valid @RequestParam(value = "name", required = false) String name,@Parameter(in = ParameterIn.QUERY, description = "Retrieve only a subset of fields of the resource (case sensitive). If provided, the value of this parameter must be a comma-separated list of top-level response message fields. If not provided, all the representation is returned. " ,schema=@Schema()) @Valid @RequestParam(value = "fields", required = false) String fields,@Min(1)@Parameter(in = ParameterIn.QUERY, description = "Indicates the page number to be returned. `pageSize` may be used with `page` to set the number of items per page. " ,schema=@Schema(allowableValues={  }, minimum="1"
, defaultValue="1")) @Valid @RequestParam(value = "page", required = false, defaultValue="1") Integer page,@Min(1) @Max(50) @Parameter(in = ParameterIn.QUERY, description = "Indicates the size of each page (number of items per page). Can only be used together with `page`. " ,schema=@Schema(allowableValues={  }, minimum="1", maximum="50"
, defaultValue="10")) @Valid @RequestParam(value = "pageSize", required = false, defaultValue="10") Integer pageSize) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<InlineResponse200>(objectMapper.readValue("{\n  \"_links\" : {\n    \"last\" : { },\n    \"self\" : { },\n    \"first\" : { }\n  },\n  \"_embedded\" : {\n    \"organisations\" : [ \"\", \"\" ]\n  },\n  \"_pagination\" : {\n    \"pageSize\" : 1,\n    \"page\" : 6,\n    \"totalElements\" : 0\n  }\n}", InlineResponse200.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<InlineResponse200>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<InlineResponse200>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<InlineResponse2001> getListOfUsersInOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Parameter(in = ParameterIn.QUERY, description = "Search for all `Users` having the given 'Roles' (case insensitive) in the 'Organisation'. If provided, the value of this parameter must be a comma-separated list of roles. Wildcard '\\*' **CANNOT** be used.  " ,schema=@Schema()) @Valid @RequestParam(value = "roles", required = false) String roles,@Parameter(in = ParameterIn.QUERY, description = "Retrieve only a subset of fields of the resource (case sensitive) If provided, the value of this parameter must be a comma-separated list of top-level response message fields. If not provided, all the representation is returned. " ,schema=@Schema()) @Valid @RequestParam(value = "fields", required = false) String fields,@Parameter(in = ParameterIn.QUERY, description = "Retrieve in the response the related embedded resource representations. If provided, the value of this parameter must be a comma-separated list of relation identifiers. If not provided, only the ressource is returned. " ,schema=@Schema()) @Valid @RequestParam(value = "embed", required = false) String embed,@Min(1)@Parameter(in = ParameterIn.QUERY, description = "Indicates the page number to be returned. `pageSize` may be used with `page` to set the number of items per page. " ,schema=@Schema(allowableValues={  }, minimum="1"
, defaultValue="1")) @Valid @RequestParam(value = "page", required = false, defaultValue="1") Integer page,@Min(1) @Max(50) @Parameter(in = ParameterIn.QUERY, description = "Indicates the size of each page (number of items per page). Can only be used together with `page`. " ,schema=@Schema(allowableValues={  }, minimum="1", maximum="50"
, defaultValue="10")) @Valid @RequestParam(value = "pageSize", required = false, defaultValue="10") Integer pageSize) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<InlineResponse2001>(objectMapper.readValue("{\n  \"_links\" : {\n    \"last\" : { },\n    \"self\" : { },\n    \"first\" : { }\n  },\n  \"_embedded\" : {\n    \"users\" : [ \"\", \"\" ]\n  },\n  \"_pagination\" : {\n    \"pageSize\" : 1,\n    \"page\" : 6,\n    \"totalElements\" : 0\n  }\n}", InlineResponse2001.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<InlineResponse2001>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<InlineResponse2001>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<OrganisationFound> getOrganisationBySiret(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<OrganisationFound>(objectMapper.readValue("\"\"", OrganisationFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<OrganisationFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<OrganisationFound>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<OrganisationFound> overwriteOrganisationBySiret(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Parameter(in = ParameterIn.DEFAULT, description = "Organisation detailled content", required=true, schema=@Schema()) @Valid @RequestBody OrganisationsSiretNumberBody body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<OrganisationFound>(objectMapper.readValue("\"\"", OrganisationFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<OrganisationFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<OrganisationFound>(HttpStatus.NOT_IMPLEMENTED);
    }

}
