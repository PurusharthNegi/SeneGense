@Create_Reading_Challenge
Feature: Verify the Reading challenge Feature - Report Abuse

  @Reading_Challenge
  Scenario Outline: Verify user can able to report abuse
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
    And Validate create challenge page
#    And Validate Reading challenge preview screen and Verify the challenge in Challenge dashboard
#    And Validate Edit challenge
	And Navigate to book club landing page and logout
    And Login as Invited user "<username1>" and "<password1>" click submit button
 	And Verify and Handle Set Preference Page  
    And Validate Accept challenge and challenge confirmation page
    And Validate the Report Abuse
 	
 	Examples: 
      | username | password  | username1 | password1 |
      | ph5      | ph5       | ph3       | ph3       |

  