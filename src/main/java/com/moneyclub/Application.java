package com.moneyclub;

import com.moneyclub.model.CampaignEntity;
import com.moneyclub.persist.ICampaignRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}


	@Component
	class DemoCommandLineRunner implements CommandLineRunner {

		@Autowired
		private ICampaignRepository campaignRepository;

		@Override
		public void run(String... args) throws Exception {

			CampaignEntity campaignEntity = new CampaignEntity();
			campaignEntity.setId(1L);
			campaignEntity.setEntityVal("9910773645");
			campaignEntity.setEntityType("MOBILE");
			campaignEntity.setMessage("Hii Test");
			//campaignRepository.save(campaignEntity);

			CampaignEntity campaignEntity1 = new CampaignEntity();
			campaignEntity1.setId(2L);
			campaignEntity1.setEntityVal("9917470230");
			campaignEntity1.setEntityType("MOBILE");
			campaignEntity1.setMessage("Hii Test q");
			//campaignRepository.save(campaignEntity1);

		}
	}
}
