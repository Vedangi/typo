Feature: View, create and edit Categories
  As a blog administrator
  In order to categorize blogs
  I should be able to see,create and edit categories
 

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access Categories
    Given I am on the categories page
    Then I should see "Categories"

        
  Scenario: Successfully create and edit Categories
    Given I am on the new categories page
    Then I should see "Categories"
    When I fill in "category_name" with "SuperLameCat"
    And I fill in "category_keywords" with "cat"
    And I fill in "category_permalink" with "super"
    And I fill in "category_description" with "lame"
    And I press "Save"
   # Then I should see "Category was successfully saved."

    Then I should see "SuperLameCat"
    Then I should see "super"
    Then I should see "lame"
    
    Then  I follow "SuperLameCat"
    
    When I fill in "category_name" with "SuperLameCat1"
    And I fill in "category_keywords" with "cat1"
    And I fill in "category_permalink" with "super1"
    And I fill in "category_description" with "lame1"
    And I press "Save"
    #Then I should see "Category was successfully saved."
    Then I should see "SuperLameCat1"
    Then I should see "cat1"
    Then I should see "super1"
    Then I should see "lame1"
   
    