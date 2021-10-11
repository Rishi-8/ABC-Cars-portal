package com.rst.project;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.rst.project.config.JPAConfig;
import com.rst.project.config.SecurityConfig;
import com.rst.project.config.WebMvcConfig;

//web.xml
public class CarPortalBootstrap extends AbstractAnnotationConfigDispatcherServletInitializer {
	
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{JPAConfig.class, SecurityConfig.class};
    }

    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{WebMvcConfig.class};
    }

    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}
