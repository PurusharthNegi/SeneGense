@CreateaChallenge_SearchTitles_DefaultState
Feature: 	As a User I want to search for Titles by entering a search string so that I can add the required titles to the Reading Challenge that I am creating

@Manual @TC50
Scenario: TC50_IOS_Verify the user can able to view the recently searched and trending items below the search box as  suggestions
Given User is logged in
And User is on the Add Titles Screen
When User taps on the Search box 
Then User should be able to view the list of recently searched items, X number of items

@Manual @TC51
Scenario: TC51_IOS_Verify the user should be able to view list of recently searched keywords, 5 or less items
Given User is logged in
And User is on the Add Titles Screen
When User taps on the Search box 
Then User should be able to view list of recently searched keywords, 5 or less items