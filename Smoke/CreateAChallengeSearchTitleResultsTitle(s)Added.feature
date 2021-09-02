@CreateAChallengeSearchTitleResultsTitle(s)Added
Feature: As a User I want to view the titles that I have added to my challenge so that I can make any modifications if required

	@Reg @55573 @63439 @63440 @63441 @63442
  Scenario Outline: Verify the curosal page of title added for challenge
   	Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User adds a title to the Reading Challenge
    Then User should be able to view each title added to the challenge at the top of the Search Title Results listing section
    And User should be able to view each title added to the challenge in the form of a carousel if number of titles are more than that can be shown in single row
	And Add the titles more than 5 titles and verify the carosal page
	And User should be able to tap on the X icon on each title in the carousel to remove it from the challenge
	And User should be able to tap on the Done CTA to add the selected titles to the challenge and return to the Create Challenge screen
 Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | phs14    | phs14    |
      
@Reg @68910 @68910 @68910
  Scenario Outline: Verify the done button
	Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
	And ​ User is title listing section 
	And User taps on the more icon for each title ​ Then ​ User should be able to view the more menu with Include in New Challenge options
	And User should be able to tap on Include in a New Challenge and be navigated to the create challenges screen with titles added to the reading list 
	And  Application should not display the ‘Include in a New Challenge’ CTAs for Non-Follett content
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
  @Automation @Regression @TC86
  Scenario Outline: TC86_Verify the curosal page of title added for challenge
   	Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User adds a title to the Reading Challenge
    Then User should be able to view each title added to the challenge at the top of the Search Title Results listing section
    And User should be able to view each title added to the challenge in the form of a carousel if number of titles are more than that can be shown in single row
 Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | phs14    | phs14    |
      
  @Manual @TC87
  Scenario: TC87_Verify the curosel page with more than 5 titles
    Given User is logged in
    And User is on the Search Title Results Screen
    When User adds a title to the Reading Challenge
    Then User should be able to view each title added to the challenge at the top of the Search Title Results listing section
    And Add the titles more than 5 titles and verify the carosal page

  @Automation @Regression @TC88
  Scenario Outline: TC88_Verify the x icon in the title
	Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User adds a title to the Reading Challenge
    Then User should be able to view each title added to the challenge at the top of the Search Title Results listing section
    And User should be able to tap on the X icon on each title in the carousel to remove it from the challenge
Examples: 
       | location | SchoolName                    | username | password |
      | New York | George Washington High School | phs14    | phs14    |
      
  @Automation @Regression @TC89
  Scenario Outline: TC89_IOS_Verify the done button
  	Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User adds a title to the Reading Challenge
    Then User should be able to view each title added to the challenge at the top of the Search Title Results listing section
    And User should be able to tap on the Done CTA to add the selected titles to the challenge and return to the Create Challenge screen
 Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | phs14    | phs14    |
      
      