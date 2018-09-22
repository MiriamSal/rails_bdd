Then("I should be on {string} page") do |article|
  expect(page).to have_content article
end
  
Then("I should be on {string} page with my comment") do |article_title|
    article = Article.find_by(title: article_title)
    expect(current_path).to eq article_path(article)
end