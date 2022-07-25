"""
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
"""

SELECT C.NAME
FROM CITY AS C INNER JOIN COUNTRY AS CO
ON C.COUNTRYCODE = CO.CODE
WHERE CO.CONTINENT = 'Africa';


"""
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
"""

SELECT CO.CONTINENT, ROUND(AVG(CI.POPULATION) - 0.5)
FROM CITY AS CI INNER JOIN COUNTRY AS CO
ON CI.COUNTRYCODE = CO.CODE
GROUP BY CO.CONTINENT

"""

"""
