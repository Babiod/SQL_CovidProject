SELECT * FROM PortfolioProject.new_covid_data;

SELECT * FROM 
PortfolioProject.new_covid_data
order by 1,2;

SELECT location,date, total_cases, new_cases, total_deaths, population
FROM  PortfolioProject.new_covid_data
Order BY 3,4;

select location, date, total_cases, total_deaths, (total_deaths/total_cases) *100 as DeathPercentage
FROM  PortfolioProject.new_covid_data
ORDER BY 1,2 ;

select location, date, total_cases, Population, (total_cases/population) *100 as PercentagePopulation
FROM  PortfolioProject.new_covid_data
ORDER BY 1,2 ;


select location, Population,MAX(total_cases) as HighestInfectionRate, MAX(total_cases/population) *100 as PercentagePopulationInfected
FROM  PortfolioProject.new_covid_data
GROUP BY location, population
ORDER BY PercentagePopulationInfected desc ;

select location, MAX(Total_deaths) as TotalDeathCount
FROM  PortfolioProject.new_covid_data
GROUP BY location
ORDER BY TotalDeathCount desc;

select location, MAX(Total_deaths) as TotalDeathCount
FROM  PortfolioProject.new_covid_data
GROUP BY location
ORDER BY TotalDeathCount desc;

select continent, MAX(Total_deaths) as TotalDeathCount
FROM  PortfolioProject.new_covid_data
GROUP BY continent
ORDER BY TotalDeathCount desc;

select date,SUM(new_cases) AS total_cases,SUM(new_deaths) AS total_deaths, SUM(new_deaths)/SUM(new_cases) *100 AS death_Percentage
FROM  PortfolioProject.new_covid_data
GROUP By date
order by date desc;

select SUM(new_cases) AS total_cases,SUM(new_deaths) AS total_deaths, SUM(new_deaths)/SUM(new_cases) *100 AS death_Percentage
FROM  PortfolioProject.new_covid_data
order by 1,2 desc;