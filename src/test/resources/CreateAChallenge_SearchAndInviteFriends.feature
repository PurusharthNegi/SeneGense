@CreateAChallenge_SearchAndInviteFriends
Feature: As a User I want to search for other users and add them to a new Reading challenge I am creating so that I can challenge my friends to participate in the Reading challenge along with me

@Automation @Regression @TC31
Scenario Outline: TC31_IOS_Verify the search functionality in invite friends screen

Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar 
Then User should be able to view the suggested search results based on the search input string When 3 characters minimum are entered
And User should be able to edit the search input string as required and view the corresponding search suggestions updated
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Manual @TC32
Scenario: TC32_IOS_Verify if search suggestions are available when search string is more than 3 characters

Given User is logged in
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
Then When user enters 3 or more characters as the search string list of suggestions should be provided

@Manual @TC33
Scenario: TC33_IOS_Verify if search suggestions are provided when search string has 2 or less characters

Given User is logged in
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
Then Search suggestions should not be displayed When user has entered 2 or less characters in the search field

@Manual @TC34
Scenario: TC34_IOS_Verify the UI When there no search results

Given User is logged in
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
And User types some invalid data in the search bar 
Then Message There are no search results should be displayed to the users

@Manual @TC35
Scenario: TC35_IOS_Verify if user is able to tap on Invite button in Search & invite friends screen

Given User is logged in
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
Then User should be able to tap on Invite CTA to add the required friends from the search results to the list of invitees  

@Automation @Regression @TC36
Scenario Outline: TC36_IOS_Verify if user is able to add as many friends to the challenge in Search & invite friends screen

Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
Then User should be able to add as many friends as required to the invitees list without any limit
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Manual @TC37
Scenario: TC37_IOS_Verify if user can remove the friend added unintentionally in Search & invite friends screen

Given User is logged in
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
And User adds a friend by tapping on Invite button
Then User should be able to tap on the X icon next to each friend added and remove them from the list of invitees 

@Manual @TC38
Scenario: TC38_IOS_Verify the label of the Add to challenge button in Search & invite friends screen

Given User is logged in
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
And User adds few friends by tapping on Invite button
Then User should be able to view the Add to challenge CTA comprising of the number of invitees selected

@Automation @Regression @TC39
Scenario Outline: TC39_IOS_Verify if user can add the invitees to the challenge in Search & invite friends screen

Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
And User adds few friends by tapping on Invite button
Then User should be able to tap on the Add to challenge CTA to add invitees to the challenge
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Manual @TC40
Scenario: TC40_IOS_Verify the navigation after adding the invitees in Search & invite friends screen

Given User is logged in
And User is on the Invite Friends screen of a Reading challenge
When User enter characters for search in the search bar
And User adds invitees by tapping on Add to challenge button
Then User should be navigated back to the Create challenge screen with the list of invitees added

