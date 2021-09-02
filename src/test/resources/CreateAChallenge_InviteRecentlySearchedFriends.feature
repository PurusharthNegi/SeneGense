@CreateAChallenge_InviteRecentlySearchedFriends
Feature: As a User I want to add participants from recently searched users list to a new Reading challenge I am creating so that I can challenge my friends to participate in the Reading challenge along with me

@Manual @TC20
Scenario: TC20_IOS_Verify if tapping on add button takes you to the invite friends page 

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
Then User should be taken to the search page where friends can be invited to join the challenge
	
@Manual @TC21
Scenario: TC21_IOS_Verify if user is able to view the recently searched friends

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
Then User should be navigated to the Invite Friends screen
And User should be able to view the list of 5 recently searched friends 

@Manual @TC22
Scenario: TC22_IOS_Verify if it just displays only 5 recent friends even when the user has searched many

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
Then User should be navigated to the Invite Friends screen
And User should be able to view only the recently searched 5 friends

@Manual @TC23
Scenario: TC23_IOS_Verify the behavior when the search history of the user is less than 5

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
Then User should be navigated to the Invite Friends screen
And User should be allowed to view the recently searched frinds even if the count is less than 5 

@Manual @TC24
Scenario: TC24_IOS_Verify the UI when the user is creating the challenge for the first time and user has not searched anybody so far

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
Then User should be navigated to the Invite Friends screen
And Application will not have any recently searched friends

@Manual @TC25
Scenario: TC25_IOS_Verify if user is able to tap on Invite button in Invite recently searched friends screen

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
Then User should be able to tap on Invite button and the specific friend should be added to the list of invitees 

@Automation @Regression @TC26
Scenario Outline: TC26_IOS_Verify if user is able to add as many friends to the challenge in Invite recently searched friends screen

Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
Then User should be able to add as many friends as required to the invitees list without any limit
Examples: 
      | location | SchoolName | username | password |
      | New York | George Washington High School       | phs14   | phs14   |
      
@Manual @TC27
Scenario: TC27_IOS_Verify if user can remove the friend added unintentionally in Invite recently searched friends screen

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
And User adds a friend by tapping on Invite button
Then User should be allowed to remove the friend by clicking on the close button in search screen

@Manual @TC28
Scenario: TC28_IOS_Verify the label of the Add to challenge button in Invite recently searched friends screen

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
And User adds few friends by tapping on Invite button
Then User should be able to view the Add to challenge CTA comprising of the number of invitees selected

@Automation @Regression @TC29
Scenario Outline: TC29_IOS_Verify if user can add the invitees to the challenge in Invite recently searched friends screen

Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
And User adds few friends by tapping on Invite button
Then User should be able to tap on the Add to challenge CTA to add invitees to the challenge
Examples: 
      | location | SchoolName | username | password |
      | New York | George Washington High School        | phs14   | phs14   |
      
@Manual @TC30
Scenario: TC30_IOS_Verify the navigation after adding the invitees  in Invite recently searched friends screen

Given User is logged in
And User is on the Create Challenge Screen
When User taps on the Add CTA under the Challenge Friends section
And User adds invitees by tapping on Add to challenge button
Then User should be navigated back to the Create challenge screen with the list of invitees added