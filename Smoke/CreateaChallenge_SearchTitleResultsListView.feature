@CreateaChallenge_SearchTitleResultsListView
Feature: As a User I want to view the search results displayed as a list, based on the search input string or search suggestion selected so that I can view and add a title to the challenge that I am creating
 @Manual @TC59
 Scenario: TC59_IOS_Verify whether the user can be able to view the pagination details of the search results, along with the search input string or suggestion
Given User is logged in
And User is on the Add Titles Screen
When User performs a search by entering a search input string and tapping the search icon or selecting a search suggestion 
Then User should be able to view the pagination details of the search results, along with the search input string or suggestion

@Automation @Regression @TC60
Scenario Outline: TC60_IOS_Verify whether the user be able to view and tap on the option to display the search results as list
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User performs a search by entering a search input string and tapping the search icon or selecting a search suggestion 
Then User should be able to view and tap on the option to display the search results as list
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
@Automation @regression @TC61
Scenario Outline: TC61_IOS_Verify whether the user can be able to tap on the Sort & Filter icon and view the sort and filter screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Add Titles Screen
When User performs a search by entering a search input string and tapping the search icon or selecting a search suggestion 
Then User should be able to tap on the Sort & Filter icon and view the sort and filter screen
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
@Manual @TC62
Scenario: TC62_IOS_Verify whther the user can be able to view the list of search results comprising of the Title image, Title name, Author, Ratings, and More icon for each entry
Given User is logged in
And User is on the Add Titles Screen
When User performs a search by entering a search input string and tapping the search icon or selecting a search suggestion 
Then User should be able to view the list of search results comprising of the Title image, Title name, Material type icon, Author, Ratings, and More icon for each entry 
Then Application should display 30 search results at a time, with the next 30 results displayed when the user taps on 'Load More' CTA at the bottom of the listing