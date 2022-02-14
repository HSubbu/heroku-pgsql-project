select c.iso_code, c.total_cases, c.new_cases, c.total_cases_per_million,p.total_population,p.continent 
   from covid19  c
join population_prosperity p
on c.iso_code = p.code
