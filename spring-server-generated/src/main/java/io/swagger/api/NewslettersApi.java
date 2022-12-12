/**
 * NOTE: This class is auto generated by the swagger code generator program (3.0.36).
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */
package io.swagger.api;

import io.swagger.model.Errors;
import io.swagger.model.FullNewsletter;
import io.swagger.model.NewsletterFound;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.CookieValue;

import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")
@Validated
public interface NewslettersApi {

    @Operation(summary = "Delete an `Newsletter`", description = "This operation allows to delete an `Newsletter`, identified by its unique identifier **newsletterId**", security = {
        @SecurityRequirement(name = "OauthSecurity", scopes = {
            "All",
"Application_Admin",
"Organisation_Admin",
"Organisation_Member",
"Organisation_Candidate",
"Organisation_Refused",
"Organisation_President",
"Organisation_VicePresident",
"Organisation_Secretary",
"Organisation_Treasurer"        })    }, tags={ "Newsletter" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "204", description = "No Content", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "400", description = "BadRequest", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "403", description = "Forbidden", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "404", description = "Not Found", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "422", description = "Unprocessable Entity", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "429", description = "Too Many Requests", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "500", description = "Internal Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "501", description = "Not Implemented", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "502", description = "Bad Gateway", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "503", description = "Service Unavailable", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "200", description = "Unexpected error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))) })
    @RequestMapping(value = "/newsletters/{newsletterId}",
        produces = { "application/json" }, 
        method = RequestMethod.DELETE)
    ResponseEntity<Errors> deleteNewsletter(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host, @Size(min=1,max=8) @Parameter(in = ParameterIn.PATH, description = "Technical Unique ID of the `Newsletter` (Base36 encoding) (https://en.wikipedia.org/wiki/Base36)", required=true, schema=@Schema()) @PathVariable("newsletterId") String newsletterId);


    @Operation(summary = "Get a single `Newsletter`", description = "This operation allows to get a `Newsletter`, identified by its unique identifier **newsletterId**", security = {
        @SecurityRequirement(name = "OauthSecurity", scopes = {
            "All",
"Application_Admin",
"Organisation_Admin",
"Organisation_Member",
"Organisation_Candidate",
"Organisation_Refused",
"Organisation_President",
"Organisation_VicePresident",
"Organisation_Secretary",
"Organisation_Treasurer"        })    }, tags={ "Newsletter" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Ressource 'Newsletter' found", content = @Content(mediaType = "application/json", schema = @Schema(implementation = NewsletterFound.class))),
        
        @ApiResponse(responseCode = "400", description = "BadRequest", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "403", description = "Forbidden", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "404", description = "Not Found", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "422", description = "Unprocessable Entity", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "429", description = "Too Many Requests", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "500", description = "Internal Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "501", description = "Not Implemented", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "502", description = "Bad Gateway", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "503", description = "Service Unavailable", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "200", description = "Unexpected error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))) })
    @RequestMapping(value = "/newsletters/{newsletterId}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<NewsletterFound> getNewsletterByID(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host, @Size(min=1,max=8) @Parameter(in = ParameterIn.PATH, description = "Technical Unique ID of the `Newsletter` (Base36 encoding) (https://en.wikipedia.org/wiki/Base36)", required=true, schema=@Schema()) @PathVariable("newsletterId") String newsletterId);


    @Operation(summary = "Overwrite a single `Newsletter`", description = "This operation allows to overwrite a `Newsletter`, identified by its unique identifier **newsletterId**", security = {
        @SecurityRequirement(name = "OauthSecurity", scopes = {
            "All",
"Application_Admin",
"Organisation_Admin",
"Organisation_Member",
"Organisation_Candidate",
"Organisation_Refused",
"Organisation_President",
"Organisation_VicePresident",
"Organisation_Secretary",
"Organisation_Treasurer"        })    }, tags={ "Newsletter" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Ressource 'Newsletter' found", content = @Content(mediaType = "application/json", schema = @Schema(implementation = NewsletterFound.class))),
        
        @ApiResponse(responseCode = "400", description = "BadRequest", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "403", description = "Forbidden", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "404", description = "Not Found", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "422", description = "Unprocessable Entity", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "429", description = "Too Many Requests", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "500", description = "Internal Error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "501", description = "Not Implemented", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "502", description = "Bad Gateway", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "503", description = "Service Unavailable", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))),
        
        @ApiResponse(responseCode = "200", description = "Unexpected error", content = @Content(mediaType = "application/json", schema = @Schema(implementation = Errors.class))) })
    @RequestMapping(value = "/newsletters/{newsletterId}",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.PUT)
    ResponseEntity<NewsletterFound> overwriteNewsletterByID(@Parameter(in = ParameterIn.HEADER, description = "Network location of the URI" ,required=true,schema=@Schema()) @RequestHeader(value="Host", required=true) String host, @Size(min=1,max=8) @Parameter(in = ParameterIn.PATH, description = "Technical Unique ID of the `Newsletter` (Base36 encoding) (https://en.wikipedia.org/wiki/Base36)", required=true, schema=@Schema()) @PathVariable("newsletterId") String newsletterId, @Parameter(in = ParameterIn.DEFAULT, description = "'Newsletter' detailled content", required=true, schema=@Schema()) @Valid @RequestBody FullNewsletter body);

}
