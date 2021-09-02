@Create_Reading_Challenge
Feature: Verify the Reading challenge Feature - Reject Challenge

  @Reading_Challenge_Rejection @Reading_Challenge
  Scenario Outline: Verify user can able to reject the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
    And Validate create challenge page
	And Navigate to book club landing page and logout
    And Login as Invited user "<username1>" and "<password1>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Challenge rejection page

    Examples: 
      | username | password  | username1 | password1 |
      | ph5      | ph5       | ph3       | ph3       |
