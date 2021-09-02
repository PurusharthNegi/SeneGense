@RP_Regression
Feature: Create Reading Challenge Regression

  @RC_Regression_01
  Scenario Outline: Verify that User should able to Create a challenge and Read a challenge
    Given Launch the Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    Then Verify the Set preference screen
    And Validate Home screen title and whether the Book Club menu is present or not in the Bottom Navigation Menu
    Then Verify the all the mandatory elements in Book Club Landing screen
    And Click on my programs tab and validate all the mandatory elements in My Programs tab
    Then Click on open programs tab and validate all the mandatory elements in Open Programs tab
    And Open any on-going program in open programs tab and verify all the mandatory elements in program details screen
    Then Verify the join program and no,thanks functionality of on-going program details screen
    And Open any active program in my programs tab and verify all the mandatory elements in program details screen
    Then Validate that the user should able to leave the any active program
    And Validate user should able to join program by given name program name
    #hen 
    
    Examples: 
      | location | SchoolName                        | username | password |
      | New York | Dlx BnT Digital Site, McHenry, IL | ph5      | ph5      |
