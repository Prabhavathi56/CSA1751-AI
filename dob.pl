% Database facts
person(john,  date(12,5,2000)).
person(mary,  date(23,8,1998)).
person(raj,   date(10,1,2002)).
person(anne,  date(5,12,1999)).

% Query by name
dob(Name, DOB) :-
    person(Name, DOB).

% Query by year
born_in_year(Name, Year) :-
    person(Name, date(_,_,Year)).
