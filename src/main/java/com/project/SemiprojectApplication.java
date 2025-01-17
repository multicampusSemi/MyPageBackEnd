package com.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@MapperScan("com.project.mapper")
@SpringBootApplication
public class SemiprojectApplication {

   public static void main(String[] args) {
      SpringApplication.run(SemiprojectApplication.class, args);
   }

}
