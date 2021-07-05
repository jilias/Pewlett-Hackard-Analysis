![retiring_count](https://user-images.githubusercontent.com/82242081/124406035-d0a54880-dd05-11eb-94f5-60f5b22f19f3.png)
# Pewlett-Hackard-Analysis
## Overview 
This analysis was to discover how many employees would be retiring in the foreseeably future of Pewlett Hackard and how many positions will be open.
This is to help the company prepare for a coming retirement wave and a large hiring process.

## Results
It was determined that about 90,398 would be retire in the forseeably future. These would be the employees who listed their birthdates between 1952 to 1955. With this information, the company can see that there are many roles that will need to be filled and alot of knowledge to extract and share amongst new employees.

count | title
------------ | -------------
29414 | Senior Engineer
28254 | Senior Staff
14222 | Engineer
12243 | Staff
4502 | Technique Leader
1761 | Assistant Engineer
2 | Manager

This leads to creating the mentorship elgibility. While those born in the 50s are planning on retiring sooner than some, those who birthdates fall in the year of 1965 are eligible for the mentorship. This concluded with about 1,549 employees eligible for the program.

## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
There are 90,398 that will need to be filled. out of those there are about 7 different types of roles, the largest being senior engineers. Overall the most type would be engineers. By using the following query, the table above was able to pull the upcoming roles that will need to filled and what the company can do to prepare.
![retiring_count](https://user-images.githubusercontent.com/82242081/124406067-e286eb80-dd05-11eb-8fc0-00728ce1c2e6.png)

SELECT * FROM unique_titles;

--retiring titles count
SELECT COUNT(title) as "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Except for managers, the company has enough of the other titles to to mentor the next coming employees. The company will therfore have to determine how they would like to prepare for the new set of managers.
Assistant Engineer	46
Engineer	287
Senior Engineer	415
Senior Staff	298
Staff	426
Technique Leader	77
![image](https://user-images.githubusercontent.com/82242081/124406204-490c0980-dd06-11eb-9f13-f132bbcf1691.png)


