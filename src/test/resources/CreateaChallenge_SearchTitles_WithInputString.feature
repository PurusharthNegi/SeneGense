@CreateaChallenge_SearchTitles_WithInputString
Feature: As a User I want to search for Titles by entering a search string so that I can add the required titles to the Reading Challenge that I am creating


@Automation @Regression @TC52
Scenario Outline: TC52_IOS_Verify the user can be able to tap on a search suggestion to view the corresponding Search results page
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should be able to tap on a search suggestion to view the corresponding Search results page
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Manual @TC53
Scenario: TC53_IOS_Verify if the user should not see this section if there is no recent search
Given User is logged in
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should not see this section if there is no recent search

@Manual @TC54
Scenario: TC54_IOS_Verify the message when there no search results
Given User is logged in
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then The User should be able to view the message No results found if no search results occur

@Automation @Regression @TC55
Scenario Outline: TC55_IOS_Veriify whether the user can be able to edit the search input string as required
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should be able to edit the search input string as required
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Automation @Regression @TC56
Scenario Outline: TC56_IOS_verify whether the user can be able to tap on a search suggestion to view the corresponding Search results page
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should be able to tap on the Search icon to view the corresponding Search results page for the search input string
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Manual @TC57
Scenario: TC57_IOS_Verify whther the user can be able to view the search suggestions updated based on each individual character change made by them on the search input string
Given User is logged in
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should be able to view the search suggestions updated based on each individual character change made by them on the search input string
Then User should be able to view the search suggestion recommendations once after entering three charachers input or above given by them


