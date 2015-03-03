Given(/^I am not logged in$/) do
  #not logged in
end

Given(/^I have a valid account$/) do
  User.create!(first_name: 'Kate', last_name: 'Balducci', email: 'user@example.com', password: 'password')
end




