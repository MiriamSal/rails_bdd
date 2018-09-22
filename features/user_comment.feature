Feature: Comment articles
    As a user
    In order to express my opinion
    I would like to be able to comment on a articles

Background:
 Given the following articles exists
      | title                | content                      |
      | A breaking news item | Some really breaking action  |

Scenario: User can comment on an article
    When I visit the site
    When I click on "A breaking news item"
    Then I should be on "A breaking news item" page
    And I fill in "Email" with "miriam@work.com"
    And I fill in "Comment" with "This is not correct!"
    And I click on "Send comment"
    Then I should be on article page with my comment