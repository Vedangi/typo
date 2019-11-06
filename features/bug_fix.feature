Feature: Fix bug in Categories
  As a blog administrator
  In order to categorize blogs
  I should be able to create and see categories
 

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access Categories
    Given I am on the categories page
    Then I should see "Categories"
    
  Scenario: Link should not be broken
        Then I should see "Categories"
        And I should see "Permalink"
        And I should see "General"
        
  Scenario: Successfully create Categories
    Given I am on the new categories page
    Then I should see "Categories"
    When I fill in "category_name" with "SuperLameCat"
    And I fill in "category_keywords" with "cat"
    And I fill in "category_permalink" with "super"
    And I fill in "category_description" with "lame"
    And I press "Save"
    Then I should see "Category was successfully saved."
    
    Then  I follow "SuperLameCat"
    
    When I fill in "category_name" with "SuperLameCat1"
    And I fill in "category_keywords" with "cat1"
    And I fill in "category_permalink" with "super1"
    And I fill in "category_description" with "lame1"
    And I press "Save"
    Then I should see "Category was successfully saved."
    Then I should see "SuperLamecat1"
   
    