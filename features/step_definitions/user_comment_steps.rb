
  Given("I am on {string} page") do |article_title|
    title = Article.find_by(title: article_title)
    expect(current_path).to eq article_path(title)
  end
  
  Then("I click on {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should be on article page with my comment") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  