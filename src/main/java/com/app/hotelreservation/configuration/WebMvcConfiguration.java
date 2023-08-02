package com.app.hotelreservation.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * class for configuring all web application views
 * and resources to be added to the spring container
 * author MILLION SHARBE
 * date jun 25 , 2022
 */
@Configuration
public class WebMvcConfiguration extends WebMvcConfigurationSupport {
    /**
     * method for adding all views in to the
     * spring boot container
     * @param registry
     */
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        /**
         *  landing page
         */
        registry.addViewController("/").setViewName("index");
        /**
         * login page
         */
        registry.addViewController("/login").setViewName("login");
        /**
         * home page
         */
        registry.addViewController("/freelancers").setViewName("freelancers");
        /**
         * about page
         */
        registry.addViewController("/about").setViewName("about");
        registry.addViewController("/uploadcv").setViewName("uploadcv");

        /**
         * contact us page
         */
        registry.addViewController("/contactus").setViewName("contactus");
        /**
         * customer home page
         */
        registry.addViewController("/customerhome").setViewName("customer-home");
        /**
         * freelancer home page
         */
        registry.addViewController("/freelancerhome").setViewName("freelancer-home");
        /**
         * profile page
         */
        registry.addViewController("/profile").setViewName("profile");
        /**
         * add job skill page
         */
        registry.addViewController("/jobskill").setViewName("jobskill");
        /**
         * jobs page
         */
        registry.addViewController("/jobs").setViewName("jobs");
        /**
         * apply form
         */
        registry.addViewController("/applyform").setViewName("applyform");
        /**
         * job applications page
         */
        registry.addViewController("/jobapplications").setViewName("jobapplications");
        /**
         * my jobs page
         */
        registry.addViewController("/myjobs").setViewName("myjobs");
        /**
         * feedbacks page
         */
        registry.addViewController("/feedbacks").setViewName("feedbacks");
        /**
         * sign up page
         */
        registry.addViewController("/signup").setViewName("signup");
        /**
         * logout page
         */
        registry.addViewController("/logout").setViewName("login");
        /**
         * post job
         */
        registry.addViewController("/jobform").setViewName("jobform");
        /**
         * job skills
         */
        registry.addViewController("/page").setViewName("skills");
        /**
         * skill search
         */
        registry.addViewController("/skillseacrh").setViewName("skillsearch");
        /**
         * FREELANCER REGISTRATION VIEW
         */
        registry.addViewController("/freelancerregistration").setViewName("freelancerregistration");
    }
    /**
     * this method is for
     * registering all necessary resources for the application
     * container to run
     * @param registry
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        /**
         * RESOURCES FOLDER
         */
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        /**
         * CSS FOLDER
         */
        registry.addResourceHandler("/css/**").addResourceLocations("/css/");
        /**
         * ASSETS FOLDER
         */
        registry.addResourceHandler("/assets/**").addResourceLocations("/assets/");
        /**
         * JAVASCRIPT FOLDER
         */
        registry.addResourceHandler("/js/**").addResourceLocations("/js/");
        /**
         * IMAGES FOLDER
         */
        registry.addResourceHandler("/img/**").addResourceLocations("/img/");
        /**
         * FONTS FOLDER
         */
        registry.addResourceHandler("/fonts/**").addResourceLocations("/fonts/");
        /**
         * DOCUMENTATION FOLDER
         */
        registry.addResourceHandler("/Doc/**").addResourceLocations("/Doc/");
        /**
         * SCSS FOLDER
         */
        registry.addResourceHandler("/scss/**").addResourceLocations("/scss/");
        /**
         * IMAGES FOLDER
         */
        registry.addResourceHandler("/images/**").addResourceLocations("/images/");
    }

    /**
     * method for defining the
     * Internal view resolver
     * of the application
     * @return
     */
    @Bean
    public InternalResourceViewResolver viewResolver() {
        /**
         * CREATING SPRING BOOT INTERNAL RESOURCE VIEW
         * RESOLVER OBJECT
         */
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        /**
         * LOCATING VIEW FOLDER FOR THE SPRING
         * BOOT CONTAINER
         */
        resolver.setPrefix("/WEB-INF/view/");
        /**
         * TELLING THE KIND FILE TO DISPLAY
         * FOR TOMCAT JASPER (.JSP)
         * JAVA SERVER PAGES
         */
        resolver.setSuffix(".jsp");
        /**
         * RETURNING THE RESOLVER OBJECT
         */
        return resolver;
    }


}
