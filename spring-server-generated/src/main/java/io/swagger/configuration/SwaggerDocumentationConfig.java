package io.swagger.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.service.ApiInfo;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")
@Configuration
public class SwaggerDocumentationConfig {

    @Bean
    public Docket customImplementation(){
        return new Docket(DocumentationType.OAS_30)
                .select()
                    .apis(RequestHandlerSelectors.basePackage("io.swagger.api"))
                    .build()
                .directModelSubstitute(org.threeten.bp.LocalDate.class, java.sql.Date.class)
                .directModelSubstitute(org.threeten.bp.OffsetDateTime.class, java.util.Date.class)
                .apiInfo(apiInfo());
    }

    ApiInfo apiInfo() {
        return new ApiInfoBuilder()
            .title("Student Union manager")
            .description(" - _**TO DO**_ :    - Hash the password + Salt in the database  - Description of the functional domain      A *Student Union*, aka *Bureau des Eleves* in the French-speaking world, is a student association gathering students from one or more faculties within a university or college.      The *Student Union* is responsible for organizing extracurricular activities such as :   - Welcoming new students   - `EVENTs`     - Student parties     - Sports meetings     - Cultural events   - Other various activities, including the management of cafeterias or student cooperatives      It often represents its members within the various faculty and university institutions.    - Description of ressources      A `USER` is anybody from the univeristy (Professor, Student, ...) or somebody not directly related to the University.      Any **User** can subscribe to the application.      A **User** can declare a *Student Union* or register to an existing *Student Union*.   Its request will be then checked and it may become a member of the *Student Union* after he paid the subscription fee.      Some **User** have specific `ROLE`s in the *Student Union* (Administrator, President, ...)        Here, an `ORGANISATION` is a *Student Union*, defined by its [SIRET](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements) number.      On a *Student Union*, some additional information can be recorded , such as the *Opening hours*, the list of `BookEntry` of the bugdet.      Some *Student Union* are also publishing `NEWSLETTERs`. A *newsletter* is used to share relevant and valuable information with their network of subscribers.      For example, these *Newsletters* could be used to communicate about `EVENTS`, giving their date, meeting place, registration fee, or start and end time.      Regardless of his organisations, any **User** can attend to an `EVENT` declared by a *Student Union*     - Documentation      - [Bureau des Eleves (fr)](https://fr.wikipedia.org/wiki/Association_facultaire)   - [GitHub](https://github.com/Miroredge/UFR_Asso)    ")
            .license("(C) Unity fo Training &amp; Research / Unit� de Formation et de Recherche (UFR) - Promotion L2 2022/2023")
            .licenseUrl("http://unlicense.org")
            .termsOfServiceUrl("https://iut-blois.univ-tours.fr/version-francaise/le-site-universitaire-de-blois")
            .version("0.1")
            .contact(new Contact("","", "maximilien.poncet@etu.univ-tours.fr"))
            .build();
    }

    @Bean
    public OpenAPI openApi() {
        return new OpenAPI()
            .info(new Info()
                .title("Student Union manager")
                .description(" - _**TO DO**_ :    - Hash the password + Salt in the database  - Description of the functional domain      A *Student Union*, aka *Bureau des Eleves* in the French-speaking world, is a student association gathering students from one or more faculties within a university or college.      The *Student Union* is responsible for organizing extracurricular activities such as :   - Welcoming new students   - `EVENTs`     - Student parties     - Sports meetings     - Cultural events   - Other various activities, including the management of cafeterias or student cooperatives      It often represents its members within the various faculty and university institutions.    - Description of ressources      A `USER` is anybody from the univeristy (Professor, Student, ...) or somebody not directly related to the University.      Any **User** can subscribe to the application.      A **User** can declare a *Student Union* or register to an existing *Student Union*.   Its request will be then checked and it may become a member of the *Student Union* after he paid the subscription fee.      Some **User** have specific `ROLE`s in the *Student Union* (Administrator, President, ...)        Here, an `ORGANISATION` is a *Student Union*, defined by its [SIRET](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements) number.      On a *Student Union*, some additional information can be recorded , such as the *Opening hours*, the list of `BookEntry` of the bugdet.      Some *Student Union* are also publishing `NEWSLETTERs`. A *newsletter* is used to share relevant and valuable information with their network of subscribers.      For example, these *Newsletters* could be used to communicate about `EVENTS`, giving their date, meeting place, registration fee, or start and end time.      Regardless of his organisations, any **User** can attend to an `EVENT` declared by a *Student Union*     - Documentation      - [Bureau des Eleves (fr)](https://fr.wikipedia.org/wiki/Association_facultaire)   - [GitHub](https://github.com/Miroredge/UFR_Asso)    ")
                .termsOfService("https://iut-blois.univ-tours.fr/version-francaise/le-site-universitaire-de-blois")
                .version("0.1")
                .license(new License()
                    .name("(C) Unity fo Training &amp; Research / Unit� de Formation et de Recherche (UFR) - Promotion L2 2022/2023")
                    .url("http://unlicense.org"))
                .contact(new io.swagger.v3.oas.models.info.Contact()
                    .email("maximilien.poncet@etu.univ-tours.fr")));
    }

}
