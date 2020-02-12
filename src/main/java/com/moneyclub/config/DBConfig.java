package com.moneyclub.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

@Configuration
public class DBConfig {

    @Bean
    @Primary
    @ConfigurationProperties(prefix = "spring.datasourceMarketing")
    public DataSource marKetingDataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties(prefix = "spring.datasourceMoneyClub")
    public DataSource moneyClubDataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    public JdbcTemplate jdbcTemplateMc(@Qualifier("moneyClubDataSource") DataSource ds) {
        return new JdbcTemplate(ds);
    }

    @Bean
    public JdbcTemplate jdbcTemplateMarketing(@Qualifier("marKetingDataSource") DataSource ds) {
        return new JdbcTemplate(ds);
    }
}
