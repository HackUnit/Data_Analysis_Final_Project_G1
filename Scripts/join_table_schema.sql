SELECT co.country_code,
co.economy,
co.region,
ft.years,
ft.tech_overall_index,
ft.ict,
ft.skills,
ft.research_dev,
ft.industry_activity,
ft.finance_access,
pc.productivity_over_index,
pc.human_capital,
pc.natural_capacity,
pc.energy,
pc.transport,
pc.info_comm_tech,
pc.institutions,
pc.private_sector,
pc.structural_change,
gd.gdp_usdollars_millions,
gd.gdp_per_capita_usdollars
FROM countries as co
LEFT JOIN frontier_tech as ft
ON (co.country_code= ft.country_code)
LEFT JOIN prod_cap as pc
ON (ft.country_code= pc.country_code AND ft.years=pc.years)
LEFT JOIN gdp as gd
ON (pc.country_code= gd.country_code AND pc.years=gd.years);