Then("I should be on {string} page") do |article|
  expect(page).to have_content article
end


  Then("I should be on article page with my comment") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  