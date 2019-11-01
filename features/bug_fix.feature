Feature: Fix bug in Categories
  As a blog administrator
  In order to categorize blogs
  I should see categories
 

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access Categories
    Given I am on the categories page
    Then I should see "Categories"
    
 
#   Scenario: Successfully create Categories
#     Given I am on the categories page
#     Then I should see "Categories"
#     When I fill in "category_name" with "SuperLameCat"
#     And I fill in "category_keywords" with "cat"
#     And I fill in "category_permalink" with "super"
#     And I fill in "category_description with" "lame"
#     And I press "Save"
#     Then I should see "Category was successfully saved."
    