package io.swagger.api;

import io.swagger.model.Errors;
import io.swagger.model.InlineResponse200;
import io.swagger.model.OrganisationReduced;
import io.swagger.model.RolesOfUserInOrganisationFound;
import io.swagger.model.SiretNumberRolesBody;
import io.swagger.model.UserCreated;
import io.swagger.model.UserFound;
import io.swagger.model.UserSubscriptionToOrganisationCreated;
import io.swagger.model.UsersBody;
import io.swagger.model.UsersPseudoBody;
import io.swagger.model.UsersPseudoBody1;
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
public class UsersApiController implements UsersApi {

    private static final Logger log = LoggerFactory.getLogger(UsersApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public UsersApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }

    public ResponseEntity<UserCreated> createUser(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Parameter(in = ParameterIn.DEFAULT, description = "User detailled content", required=true, schema=@Schema()) @Valid @RequestBody UsersBody body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<UserCreated>(objectMapper.readValue("\"\"", UserCreated.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<UserCreated>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<UserCreated>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<UserSubscriptionToOrganisationCreated> createUserSubscriptionToOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo,@Parameter(in = ParameterIn.DEFAULT, description = "Organisation detailled content", required=true, schema=@Schema()) @Valid @RequestBody OrganisationReduced body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<UserSubscriptionToOrganisationCreated>(objectMapper.readValue("\"\"", UserSubscriptionToOrganisationCreated.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<UserSubscriptionToOrganisationCreated>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<UserSubscriptionToOrganisationCreated>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<Errors> deleteUser(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo) {
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

    public ResponseEntity<Errors> deleteUserSubscriptionToOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber) {
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

    public ResponseEntity<InlineResponse200> getListOfOrganisationsOfUser(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo,@Parameter(in = ParameterIn.QUERY, description = "Search for all `Users` having the given 'Roles' (case insensitive) in the 'Organisation'. If provided, the value of this parameter must be a comma-separated list of roles. Wildcard '\\*' **CANNOT** be used.  " ,schema=@Schema()) @Valid @RequestParam(value = "roles", required = false) String roles,@Parameter(in = ParameterIn.QUERY, description = "Retrieve only a subset of fields of the resource (case sensitive) If provided, the value of this parameter must be a comma-separated list of top-level response message fields. If not provided, all the representation is returned. " ,schema=@Schema()) @Valid @RequestParam(value = "fields", required = false) String fields,@Parameter(in = ParameterIn.QUERY, description = "Retrieve in the response the related embedded resource representations. If provided, the value of this parameter must be a comma-separated list of relation identifiers. If not provided, only the ressource is returned. " ,schema=@Schema()) @Valid @RequestParam(value = "embed", required = false) String embed,@Min(1)@Parameter(in = ParameterIn.QUERY, description = "Indicates the page number to be returned. `pageSize` may be used with `page` to set the number of items per page. " ,schema=@Schema(allowableValues={  }, minimum="1"
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

    public ResponseEntity<RolesOfUserInOrganisationFound> getRolesOfUserInOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<RolesOfUserInOrganisationFound>(objectMapper.readValue("[ \"MEMBER\", \"MEMBER\" ]", RolesOfUserInOrganisationFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<RolesOfUserInOrganisationFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<RolesOfUserInOrganisationFound>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<UserFound> getUserByPseudo(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<UserFound>(objectMapper.readValue("\"\"", UserFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<UserFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<UserFound>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<UserFound> overwriteUserByPseudo(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo,@Parameter(in = ParameterIn.DEFAULT, description = "User detailled content", required=true, schema=@Schema()) @Valid @RequestBody UsersPseudoBody body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<UserFound>(objectMapper.readValue("\"\"", UserFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<UserFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<UserFound>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<UserFound> updatePartialUserByPseudo(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo,@Parameter(in = ParameterIn.DEFAULT, description = "User detailled content", required=true, schema=@Schema()) @Valid @RequestBody UsersPseudoBody1 body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<UserFound>(objectMapper.readValue("\"\"", UserFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<UserFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<UserFound>(HttpStatus.NOT_IMPLEMENTED);
    }

    public ResponseEntity<RolesOfUserInOrganisationFound> updateRolesOfUserInOrganisation(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host,@Size(min=5,max=50) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the User", required=true, schema=@Schema()) @PathVariable("pseudo") String pseudo,@Size(min=14,max=14) @Parameter(in = ParameterIn.PATH, description = "Unique ID of the Organisation", required=true, schema=@Schema()) @PathVariable("siretNumber") String siretNumber,@Parameter(in = ParameterIn.DEFAULT, description = "List of roles", required=true, schema=@Schema()) @Valid @RequestBody SiretNumberRolesBody body) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<RolesOfUserInOrganisationFound>(objectMapper.readValue("[ \"MEMBER\", \"MEMBER\" ]", RolesOfUserInOrganisationFound.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<RolesOfUserInOrganisationFound>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<RolesOfUserInOrganisationFound>(HttpStatus.NOT_IMPLEMENTED);
    }

}
