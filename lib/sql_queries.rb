# Write your sql queries in this file in the appropriate method like the example below:
#
# INSERT INTO users (id, name, age) VALUES
# (1, 'Finnebar', 17), (2, 'Bear', 6), (3, 'Iguana', 4), (4, 'Alex', 33),
# INSERT INTO projects (id, title, category, funding_goal, start_date, end_date) VALUES
# (1, 'Help me buy a guitar', 'music', 500.00, '2013-06-30', '2013-07-30'),
# INSERT INTO pledges (id, amount, user_id, project_id) VALUES
# (1, 10.00, 1, 2),

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"select title, sum(amount) from projects inner join pledges on projects.id = pledges.project_id group by title order by title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"select name, age, sum(amount) from users inner join pledges on users.id = pledges.user_id group by name order by name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"select title, sum(amount)-funding_goal from projects join pledges on projects.id = pledges.project_id group by title having sum(amount) >= funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"select name, sum(amount) from users inner join pledges on users.id = pledges.user_id group by name order by sum(amount), name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"select category, amount from projects inner join pledges on projects.id = pledges.project_id where category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"select category, sum(amount) from projects join pledges on projects.id = pledges.project_id where category = 'books' group by category"
end
