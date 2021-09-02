@CreateaChallenge_SearchTitles_WithInputString
Feature: As a User I want to search for Titles by entering a search string so that I can add the required titles to the Reading Challenge that I am creating

@Reg @TC50 @TC51 @TC52 @TC55 @TC56 @TC57 @55566
Scenario Outline:Verify the user can able to view the recently searched and trending items below the search box as suggestions
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box 
Then User should be able to view the list of recently searched items, X number of items
Then User should be able to view the search suggestion recommendations once after entering three charachers input or above given by them
When User taps on the Search box and enters 3 characters 
Then User should be able to edit the search input string as required
Then User should be able to view the search suggestions updated based on each individual character change made by them on the search input string
Then User should be able to tap on a search suggestion to view the corresponding Search results page
Examples: 

      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5    | ph5    |
      
@Automation @Regression @TC50
Scenario Outline: TC50_IOS_Verify the user can able to view the recently searched and trending items below the search box as suggestions
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box 
Then User should be able to view the list of recently searched items, X number of items
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
@Automation @Regression @TC51
Scenario Outline: TC51_IOS_Verify it is showing less than 5 recently viewed items or not
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box 
Then User should be able to view list of recently searched keywords, 5 or less items
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |   

@Automation @Regression @TC52
Scenario Outline: TC52_IOS_Verify the user can be able to tap on a search suggestion to view the corresponding Search results page
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should be able to tap on a search suggestion to view the corresponding Search results page
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

      
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
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

      
@Automation @Regression @TC56
Scenario Outline: TC56_IOS_verify whether the user can be able to tap on a search suggestion to view the corresponding Search results page
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should be able to tap on the Search icon to view the corresponding Search results page for the search input string
Examples: 
    | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

@Automation @Regression  @TC57
Scenario Outline: TC57_IOS_Verify whther the user can be able to view the search suggestions updated based on each individual character change made by them on the search input string
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User taps on the Search box and enters 3 characters 
Then User should be able to view th	e search suggestions updated based on each individual character change made by them on the search input string
Then User should be able to view the search suggestion recommendations once after entering three charachers input or above given by them
Examples: 
    | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      


