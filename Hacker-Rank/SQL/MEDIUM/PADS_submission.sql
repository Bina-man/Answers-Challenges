"""
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.


https://hackerrank-challenge-pdfs.s3.amazonaws.com/12889-the-pads-English?AWSAccessKeyId=AKIAR6O7GJNX5DNFO3PV&Expires=1658898233&Signature=xwxxXs0gzNlqKovC28jPXrjlT2M%3D&response-content-disposition=inline%3B%20filename%3Dthe-pads-English.pdf&response-content-type=application%2Fpdf
"""

SELECT CONCAT(NAME,'(',LEFT(OCCUPATION,1),')')
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(*),' ', LOWER(OCCUPATION),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*), OCCUPATION;