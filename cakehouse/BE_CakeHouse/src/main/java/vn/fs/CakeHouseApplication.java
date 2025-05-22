package vn.fs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class  CakeHouseApplication {

	public static void main(String[] args) {
		SpringApplication.run(CakeHouseApplication.class, args);
	}

}
