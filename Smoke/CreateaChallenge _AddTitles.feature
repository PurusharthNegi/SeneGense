@CreateaChallenge_AddTitles
Feature: As a User I want to add Titles of my choice to the reading challenge that I am creating so that I can specify the titles that should be read by participants as a part of the challenge

@Reg @TC173 @TC174 @TC175 @TC176 @55565
Scenario Outline: Verify user should able to add the title of their choice
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Create Challenge Screen
When User taps on the Add Titles CTA 
Then User should be navigated to the Add Titles screen, with the challenge name as the screen title
Then User should be able to view the carousel of titles, with the Recommendation carousel displayed at the top
And Check with adding more than 5 carosels and how the performance is
Then User should be able to view the carousel of titles, with the Favorites carousel displayed
When User should be able to view the Search bar to enter the title name to be searched
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5    | ph5    |


@Automation @Regression @TC46
Scenario Outline: TC46_IOS_Verify that the user can be able to navigate Add title challenge with the challange name as screen title
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Create Challenge Screen
When User taps on the Add Titles CTA 
Then User should be navigated to the Add Titles screen, with the challenge name as the screen title
Examples: 
   | location | SchoolName | username | password |
      | New York |Dlx Bnt Digital Site | ph5   | ph5   |

@Automation @Regression  @TC47
Scenario Outline: TC47_IOS_Verify the user should be able to view the carousel of titles, with the Recommendation carousel displayed at the top and check UI If there are more than 5 carosels how the performance is
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Create Challenge Screen
When User taps on the Add Titles CTA 
Then User should be able to view the carousel of titles, with the Recommendation carousel displayed at the top
And Check with adding more than 5 carosels and how the performance is
Examples: 
   | location | SchoolName | username | password |
      | New York |Dlx Bnt Digital Site | ph5   | ph5   |


@Automation @Regression @TC48
Scenario Outline: TC48_IOS_verify whether the should be able to view the carousel of titles, with the Favorites carousel displayed
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Create Challenge Screen
When User taps on the Add Titles CTA 
Then User should be able to view the carousel of titles, with the Favorites carousel displayed
Examples: 
   | location | SchoolName | username | password |
      | New York |Dlx Bnt Digital Site | ph5   | ph5   |

@Automation @Regression @TC49
Scenario Outline: TC49_IOS_Verify whther the user can be able to view the search bar where the title name can be searched
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Create Challenge Screen
When User taps on the Add Titles CTA
When User should be able to view the Search bar to enter the title name to be searched

Examples: 
   | location | SchoolName | username | password |
      | New York |Dlx Bnt Digital Site | ph5   | ph5   |






