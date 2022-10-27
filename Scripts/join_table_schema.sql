--create coft_table
SELECT co.country_code,
co.economy,
co.region,
ft.years,
ft.tech_overall_index,
ft.ict,
ft.skills,
ft.research_dev,
ft.industry_activity,
ft.finance_access
INTO coft_table
FROM countries as co 
LEFT JOIN frontier_tech as ft
ON (co.country_code= ft.country_code)
WHERE (ft.years BETWEEN '2008' AND '2019');

--create coft_gdp_table
SELECT ct.country_code,
ct.economy,
ct.region,
ct.years,
ct.tech_overall_index,
ct.ict,
ct.skills,
ct.research_dev,
ct.industry_activity,
ct.finance_access,
gd.gdp_usdollars_millions,
gd.gdp_per_capita_usdollars
INTO coft_gdp_table
FROM coft_table as ct
LEFT JOIN gdp as gd
ON (ct.country_code= gd.country_code AND ct.years= gd.years)
WHERE (gd.years BETWEEN '2008' AND '2019');

--create coft_gdp_prod_cap_table
SELECT cg.country_code,
cg.economy,
cg.region,
cg.years,
cg.tech_overall_index,
cg.ict,
cg.skills,
cg.research_dev,
cg.industry_activity,
cg.finance_access,
cg.gdp_usdollars_millions,
cg.gdp_per_capita_usdollars,
pc.productivity_over_index,
pc.human_capital,
pc.natural_capacity,
pc.energy,
pc.transport,
pc.info_comm_tech,
pc.institutions,
pc.private_sector,
pc.structural_change
INTO coft_gdp_prod_cap_table
FROM coft_gdp_table as cg
LEFT JOIN prod_cap as pc
ON (cg.country_code= pc.country_code AND cg.years= pc.years)
WHERE (pc.years BETWEEN '2008' AND '2019');

SELECT * FROM coft_gdp_prod_cap_table
