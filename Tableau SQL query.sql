
Select SUM(new_cases) as total_cases, SUM(new_deaths)as total_deaths, SUM(new_deaths)/SUM(New_Cases)*100 as DeathPercentage
From `Portfolio Project`.CovidDeaths
-- Where location like '%states%'
where continent is not null 
-- Group By date
order by 1,2
limit 100000000;


Select location, SUM(new_deaths) as TotalDeathCount
From `Portfolio Project`.CovidDeaths
-- Where location like '%states%'
Where continent is not null 
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc
limit 100000;


Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From `Portfolio Project`.CovidDeaths
-- Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc
limit 100000;



Select Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From `Portfolio Project`.CovidDeaths
-- Where location like '%states%'
Group by Location, Population, date
order by PercentPopulationInfected desc
limit 100000;



