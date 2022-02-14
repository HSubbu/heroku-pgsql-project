select *
from {{ref('population')}} 
inner join {{ref('covid19')}} 
on {{ref('population')}}.code = {{ref('covid19')}}.iso_code 
where code='{{ var("selected_country") }}' AND year='{{ var("selected_year") }}'