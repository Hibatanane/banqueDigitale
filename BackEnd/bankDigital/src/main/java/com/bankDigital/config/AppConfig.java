package com.bankDigital.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
public class AppConfig extends WebMvcConfigurationSupport
{
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/assets/css/**","/assets/js/**","/images/**").
                addResourceLocations("classpath:/static/assets/css/","classpath:/static/assets/js/","classpath:/static/images");
    }
    @Bean
   public InternalResourceViewResolver viewResolver(){
       InternalResourceViewResolver jspViewResolver = new InternalResourceViewResolver();
       jspViewResolver.setPrefix("/WEB/views/");
       jspViewResolver.setSuffix(".jsp");
       jspViewResolver.setViewClass(JstlView.class);
       return jspViewResolver;
   }
}
