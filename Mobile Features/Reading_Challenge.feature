@Create_Reading_Challenge
Feature: Verify the Reading challenge Feature

  @Reading_Challenge_OverAll
  Scenario Outline: Verify the Reading challenge functionality
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
    And Validate create challenge page
    And Validate Reading challenge preview screen and Verify the challenge in Challenge dashboard
    And Validate Edit challenge
    And Login as Invited user "<username1>" and "<password1>" click submit button
 	And Verify and Handle Set Preference Page  
    And Validate Accept challenge and challenge confirmation page
    And Validate the Report Abuse
 	
 	Examples: 
      | location | SchoolName                    | username | password  | username1 | password1 |
      | New York | Photon_03_Site_A, McHenry, IL | ph5      | ph5       | ph3       | ph3       |

   
  @Reading_Challenge_Rejection
  Scenario Outline: Verify the Reading challenge Rejection
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
    And Validate Challenge rejection page

    Examples: 
      | location | SchoolName                    | username | password  | username1 | password1 |
      | New York | Photon_03_Site_A, McHenry, IL | ph5      | ph5       | ph3       | ph3       |

  @Reading_Challenge_LeaveChallenge
  Scenario Outline: Verify user able to leave a challenge after accepting
   Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
    And Validate create challenge page
#    And Validate Reading challenge preview screen and Verify the challenge in Challenge dashboard
    And Validate leave Challenege

     Examples: 
       | location | SchoolName                    | username | password  | username1 | password1 |
       | New York | Photon_03_Site_A, McHenry, IL | ph5      | ph5       | ph3       | ph3       |
      
  @Reading_Challenge_others
  Scenario Outline: Verify user Reading challege sub functionality
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
  	And Validate Discard challenge
    And Validate save and start button without description and mandatory fields input
    And Validate add friend page for new user
    And Validate adding already added friend and remove friend cancel button in CC page
    And Validate title search page for new user and search page for invalid input
    And Validate search result pagination cancel Read Checkout Add to challenege button
    And Validate the title list view datas
  	And Validate More action buttons for non follet books
  	And Validate Title detail page content and Add to chalenge button
	And Validate title remove pop up cancel button from CC page
	And Validate Update challenge Name Reminder Date add friend
	And Validate More action buttons when user search from global search
	
     Examples: 
      | location | SchoolName                    | username | password  | 
      | New York | Photon_03_Site_A, McHenry, IL | ph5      | ph5       |
      
