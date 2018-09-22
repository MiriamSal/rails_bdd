
  Given("I am on article page") do
    article = Article.find_by(:id)
    expect(current_path).to eq article_path
  end
  
  Then("I click on {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should be on article page with my comment") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  