-- Creating table for Country Codes
CREATE TABLE countries(
    country_code VARCHAR(4) NOT NULL,
    ECONOMY VARCHAR(40) NOT NULL,
    Region VARCHAR(40) NOT NULL,
    PRIMARY KEY (country_code),
    UNIQUE (ECONOMY)
);

-- Creating table for Productive Capacities 
CREATE TABLE prod_cap(
    country_code VARCHAR(4) NOT NULL,
    YEARS INT NOT NULL, 
    productivity_over_index FLOAT NOT NULL,
    human_capital FLOAT NOT NULL,
    natural_capacity FLOAT NOT NULL,
    energy FLOAT NOT NULL,
    transport FLOAT NOT NULL,
    info_comm_tech FLOAT NOT NULL,
    institutions FLOAT NOT NULL,
    private_sector FLOAT NOT NULL,
    structural_change FLOAT NOT NULL,
FOREIGN KEY (country_code) REFERENCES countries (country_code)
);

-- Creating table for GDP
CREATE TABLE GDP(
    country_code VARCHAR(4) NOT NULL,
    YEARS INT NOT NULL,
    GDP_USdollars_millions FLOAT NOT NULL,
    GDP_per_capita_Usdollars FLOAT NOT NULL,
FOREIGN KEY (country_code) REFERENCES countries (country_code)
);

-- Creating table for Frontier Technology
CREATE TABLE frontier_tech(
    country_code VARCHAR(4) NOT NULL,
    YEARS INT NOT NULL, 
    tech_overall_index FLOAT NOT NULL,
    ICT FLOAT NOT NULL,
    skills FLOAT NOT NULL,
    research_dev FLOAT NOT NULL,
    Industry_activity FLOAT NOT NULL,
    finance_access FLOAT NOT NULL,
FOREIGN KEY (country_code) REFERENCES countries (country_code)
);