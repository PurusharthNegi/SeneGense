@Create_Reading_Challenge_Smoke
Feature: Verify the Reading challenge Feature smoke

  @RC_Smoke_WEB
  Scenario Outline: Verify the Reading challenge functionality smoke test
   Given Launch the Web Application
    And Enter the User Name and Password "<username>" and "<password>" click Submit button
    And Validate Book club landing Page
    And Validate Create Challenge Icon
    And Validate Enter Challenge Name
    And Validate Enter Challenge Description
    And Validate Search and add invite Friend
    And Validate Set Reminder
    And Validate Set Read By Date
    And Validate Search and Add Title
    And Validate Save the Challenge with details
    And Validate Create Challenge
    And Validate Edit Challenge
    And Validate Verify the created challenge in creater challenge dashboard
    And Login as Invited user "<username1>" and "<password1>" click submit button
    And Validate Accept challenge and challenge confirmation page
    And Validate the challenge details when participant click on it on Challenge dashboard

    Examples: 
     |  username | password | username1 | password1 |
     | ph1   | ph1    |ph11       |ph11        |
     
