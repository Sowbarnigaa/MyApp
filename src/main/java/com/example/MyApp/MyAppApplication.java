package com.example.MyApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

@SpringBootApplication
@EnableElasticsearchRepositories
public class MyAppApplication {
	public static void main(String[] args)
	{
		SpringApplication.run(MyAppApplication.class, args);
	}
}