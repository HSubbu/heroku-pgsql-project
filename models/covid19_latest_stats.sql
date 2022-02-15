select c.iso_code, c.total_cases,p.year, c.new_cases,p.total_population, c.total_cases_per_million,
       c.population,c.population_density, p.gdp_per_capita
   from covid19  c
join population_prosperity p
on c.iso_code = p.code
where p.year=2019 and
      (c.iso_code='USA' or c.iso_code='IND')
