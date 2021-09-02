@CreateaChallengeSearchTitleResultsSortFilter
Feature: As a User I want to sort and/ or filter the search title results so that I can view the results listed as required and find the title that I am looking for more easily.

  @Manual @TC67
  Scenario: TC67_Verify the filter header options
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And User can view "Cancel"option in Header left Corner
    And User Can view Sort&Filter option middle of the header
    And User Can view the ResetAll option in Header right Corner

  @Automation @Regression @TC68
  Scenario Outline: TC68_Verify Sort By Options Click any one sort by options the Subuject Author Title Available Now it should display  related book and verify default select relevancy
	Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And User Should view the Sort by Options Relavancy Subject Title Author Available Now with right side radio button
    And User should able to Click the radio button
    And Relavancy radio button should be default select
    And User Click the any one radio button in sort by options it sholud display related books
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Automation @Regression @TC69
  Scenario Outline: TC69_Verify Format Options and check and uncheck the option and verify the format results
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And User Should View Format Options AudioBook E-Book Lightbox Magazine NewsPaper with right side checkboxes
    And User can able to select more that one checkbox
    And Click AudiobookE-Book it should display only audio,ebook only
    And Uncheck audioebook and check  the Newpaper and Magazine it should not display Audiobook E-Book and should  display newpaper and magazine
    And Uncheck newspaper and magazine and check  the light box it should display related book  should not display  audiobook ebook newpaper and magazine
Examples: 
   	 | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Manual @TC70
  Scenario: TC70-Verify the Format Options Count,view results count
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And Verify AudioBook Count it should matches with results displayed
    And Verify the E-Book Count it should matches with results displayed
    And Verify the Lightbox Count it should matches with results displayed
    And Verify the Magazine Count it should matches with results displayed
    And Verify the NewsPaper Count it should matches with results displayed
    And Verify the View Results Count it should matches with results displayed

  @Manual @TC71
  Scenario: TC71-User should be able to tap on the View Results CTA to view the search title results displayed in List view or Tile view without applying filter
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And User Does not select any sortby and filter option
    And User should be able to tap on the View Results CTA to view the search title results displayed in List view or Tile view

  @Manual @TC72
  Scenario: TC72_Verify Cancel button
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And User should be able to tap on the Cancel CTA to navigate back to the Search Title Listing screen, without any changes for the sort or filter options applied

  @Manual @TC73
  Scenario: TC73_Verify Reset All button
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And User should be able to tap on the Reset All CTA to reset the sort and filter options selected by the user and return to the default state on the Sort & Filter screen

   @Reg @TC194 @TC195 @TC196 @TC197 @TC199 @TC200 @55570
  Scenario Outline: Verify the sort and filter header options
   Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the sort and filter icon
    Then User Navigate to the Sort&Filter Screen
    And User can view "Cancel"option in Header left Corner
    And User Can view Sort&Filter option middle of the header
    And User Can view the ResetAll option in Header right Corner
    And User Should view the Sort by Options Relavancy Subject Title Author Available Now with right side radio button
    And User should able to Click the radio button
    And Relavancy radio button should be default select
    And User Click the any one radio button in sort by options it sholud display related books
   	And User Should View Format Options AudioBook E-Book Lightbox Magazine NewsPaper with right side checkboxes
    And User can able to select more that one checkbox
    And Click AudiobookE-Book it should display only audio,ebook only
    And Uncheck audioebook and check  the Newpaper and Magazine it should not display Audiobook E-Book and should  display newpaper and magazine
    And Uncheck newspaper and magazine and check  the light box it should display related book  should not display  audiobook ebook newpaper and magazine
    And Verify AudioBook Count it should matches with results displayed
    And Verify the E-Book Count it should matches with results displayed
    And Verify the Lightbox Count it should matches with results displayed
    And Verify the Magazine Count it should matches with results displayed
    And Verify the NewsPaper Count it should matches with results displayed
    And Verify the View Results Count it should matches with results displayed
    And User should be able to tap on the Reset All CTA to reset the sort and filter options selected by the user and return to the default state on the Sort & Filter screen
    And User should be able to tap on the Cancel CTA to navigate back to the Search Title Listing screen, without any changes for the sort or filter options applied
     Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    | 
    
    
    
    