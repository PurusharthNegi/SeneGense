@CreateaChallenge_SearchTitleResults_TileView
Feature: As a User I want to view the search results displayed in the form of tiles, based on the search input string or search suggestion selected so that I can view and add a title to the challenge that I am creating

@Manual @TC63
Scenario: TC63_IOS_Verify whether the user can be able to view the Search results in the form of tiles, with each entry comprising on the Title image, More icon and material availability icon (assuming this is the same as current app's In/ Out/ infinite label)
Given User is logged in
And User is on the Search Title Results Screen
When User taps on the tile view icon to view the search results in the form of tiles 
Then User should be able to view the Search results in the form of tiles, with each entry comprising on the Title image, More icon and material type icon


@Manual @TC64
Scenario: TC64_IOS_Verify whether the user can be able to view the pagination details of the search results, along with the search input string or suggestion
Given User is logged in
And User is on the Search Title Results Screen
When User taps on the tile view icon to view the search results in the form of tiles 
Then User should be able to view the pagination details of the search results, along with the search input string or suggestion

@Automation @Regression @TC65
Scenario Outline: TC65_IOS_Verify whether the user can be able to view and tap on the option to display the search results as a tile
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Search Title Results Screen
When User taps on the tile view icon to view the search results in the form of tiles 
Then User should be able to view and tap on the option to display the search results as a tiles
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |


@Automation @Regression @TC66
Scenario Outline: TC66_IOS_Verify whether the user can be able to tap on the Sort & Filter CTA and view the sort and filter screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Search Title Results Screen
When User taps on the tile view icon to view the search results in the form of tiles 
Then User should be able to tap on the Sort & Filter CTA and view the sort and filter screen
Then Application should display 30 search results at a time, with the next 30 results displayed when the user taps on Load More CTA at the bottom of the listing
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
   
      
@Reg @TC192 @TC193 @55569
Scenario Outline: Verify whether the user can be able to view and tap on the option to display the search results as a tile
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Search Title Results Screen
When User taps on the tile view icon to view the search results in the form of tiles 
Then User should be able to view and tap on the option to display the search results as a tiles
Then User should be able to tap on the Sort & Filter CTA and view the sort and filter screen
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      

      