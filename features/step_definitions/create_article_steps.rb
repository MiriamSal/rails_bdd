  
When("I click on {string}") do |button|
    click_on button
end

When("I fill in {string} with {string}") do |field, content|
    fill_in(field, with: content)
end

Then("I should be on index page") do
    expect(current_path).to eq root_path
end

Then("I should be on create article page") do
    expect(current_path).to eq articles_path
end