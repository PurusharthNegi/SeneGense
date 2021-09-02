Feature: As a User I want to view the title details so that I can learn more about the title before adding it to the Reading Challenge or perform other actions such as Checkout or Reserve

 @Reg @TC55572 @63431 @63432 @63434 @63436
  Scenario Outline: Tap the book and verify the title detail page
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able to view the title details such as Title Image Material Type icon Author Name Title Name Ratings Text to Speech capability Favorite icon
	And User should be able to tap on the Add to Challenge CTA to add the title to the challenge
    And Application should replace the Add to Challenge CTA text with Remove from Challenge once a user adds a title to the challenge
	And User should be able to tap on Checkout or Reserve for a particular material type and check out a copy or place a hold on a copy of the title
	And User should be able to tap on More CTA to be navigated to the title details screen
	
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
       
@Reg @68833 @68835 @68836
Scenario Outline: Tap the book and verify the title detail page,Author Name Title Name TitleImage ratings Favorite icon
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Search Title Results Screen
When User taps on a title in the listing section
Then User should be able to view the Title details bottom drawer
And User should be able to view the title details such as Title Image Material Type icon Author Name Title Name Ratings Text to Speech capability Favorite icon
And User should be able to tap on the Add to Challenge CTA to add the title to the challenge
And Application should replace the Add to Challenge CTA text with Remove from Challenge once a user adds a title to the challenge
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
@Reg @68579U @68838
  Scenario Outline:Verify the Checkout and reserve button
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able to tap on Checkout or Reserve for a particular material type and check out a copy or place a hold on a copy of the title
 Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Automation @Regression @TC79
  Scenario Outline: TC79_Tap the book and verify the title detail page,Author Name Title Name TitleImage ratings Favorite icon
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able to view the title details such as Title Image Material Type icon Author Name Title Name Ratings Text to Speech capability Favorite icon
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Automation @Regression @TC80
  Scenario Outline: TC80_Verify the Add to Challenge button
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able to tap on the Add to Challenge CTA to add the title to the challenge
    And Application should replace the Add to Challenge CTA text with Remove from Challenge once a user adds a title to the challenge
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Manual @TC81
  Scenario: TC81_Verify the Material types, and  No of copies available,Size for ebook and audio book
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able view the Material Type Images and text,Digital,Print,AudioBook
    And User can able to view No of copies available text with count
    And User can able able to view the AudioBook and E-Book size
    And User can able to view checkout and reserve button

  @Automation @Regression @TC82
  Scenario Outline: TC82-Verify the Checkout and reserve button
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able to tap on Checkout or Reserve for a particular material type and check out a copy or place a hold on a copy of the title
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Manual @TC83
  Scenario: TC83_User should be able to tap on the area outside the bottom drawer to navigate back to the Search Title Results Screen
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able to tap on the area outside the bottom drawer to navigate back to the Search Title Results Screen

  @Automation @Regression @TC84
  Scenario Outline: TC84-Verify the more icon and options
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User should be able to tap on More CTA to be navigated to the title details screen
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Manual @TC85
  Scenario: TC85_Verify the done button should not work
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on a title in the listing section
    Then User should be able to view the Title details bottom drawer
    And User tap on the Done button it should not work
    
    
    
    
    
    
    
    
