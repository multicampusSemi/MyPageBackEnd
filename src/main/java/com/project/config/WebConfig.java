package com.project.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class WebConfig {

    // JSP 뷰 리졸버 설정
    @Bean
    public InternalResourceViewResolver jspViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/"); // JSP 파일 경로
        resolver.setSuffix(".jsp"); // JSP 파일 확장자
        resolver.setOrder(0); // 우선순위 설정: JSP 뷰 리졸버 우선
        return resolver;
    }

    // Thymeleaf 설정 제거
    // Thymeleaf를 사용하지 않을 경우 아래의 Thymeleaf 관련 설정은 제거
    // 프로젝트가 JSP만 사용한다면 불필요한 Thymeleaf 설정은 삭제하는 것이 좋습니다.
    // 만약 추후 Thymeleaf를 사용할 계획이라면 설정을 유지하세요.

    /*
    @Bean
    public ClassLoaderTemplateResolver thymeleafTemplateResolver() {
        ClassLoaderTemplateResolver resolver = new ClassLoaderTemplateResolver();
        resolver.setPrefix("templates/"); // Thymeleaf 템플릿 경로
        resolver.setSuffix(".html"); // Thymeleaf 파일 확장자
        resolver.setTemplateMode("HTML"); // 템플릿 모드 설정
        resolver.setCharacterEncoding("UTF-8");
        return resolver;
    }

    @Bean
    public SpringTemplateEngine thymeleafTemplateEngine(ClassLoaderTemplateResolver templateResolver) {
        SpringTemplateEngine templateEngine = new SpringTemplateEngine();
        templateEngine.setTemplateResolver(templateResolver);
        return templateEngine;
    }
    */
}
