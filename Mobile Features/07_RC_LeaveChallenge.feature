@Create_Reading_Challenge
Feature: Verify the Reading challenge Feature - Leave Challenge

  @Reading_Challenge_LeaveChallenge @Reading_Challenge
  Scenario Outline: Verify user able to leave a challenge after accepting
   Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
    And Validate create challenge page
    And Validate leave Challenege

     Examples: 
       | username | password  | username1 | password1 |
       | ph5      | ph5       | ph3       | ph3       |
      