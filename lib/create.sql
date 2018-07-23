create table users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);
create table projects (id INTEGER PRIMARY KEY, title TEXT, category text, funding_goal float, start_date text, end_date text);
create table pledges (id INTEGER PRIMARY KEY, amount float, user_id INTEGER, project_id INTEGER);
