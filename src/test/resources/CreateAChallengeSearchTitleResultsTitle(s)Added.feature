@CreateAChallengeSearchTitleResultsTitle(s)Added
Feature: As a User I want to view the titles that I have added to my challenge so that I can make any modifications if required

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
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
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
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
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
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
      