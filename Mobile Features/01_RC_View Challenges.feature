@Reading_Challenge
Feature: Verify the Reading challenge Listing Page - View Challenge

  @RC_View_Challenge @Reading_Challenge
  Scenario Outline: Verify user can able to view the invited and the challneges in which the is participating
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
    And Verify if user is able to view the challenges that they are participating
    And Verify if percentage of completion is provided based on the progress made
    And Verify the icon of the percentage completion according to the value
    And Verify if user can view the time spent on the particular challenge
    And Verify the UI when the user has not accepted
    And Verify user should not be able to view the progress percentage or hours spent for Draft Challenges and Closed Challenges
 
 	Examples: 
      | username | password  | 
      | ph3      | ph3       |
   
 