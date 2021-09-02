@ReadingChallengeReportAbuseorLeaveChallenge
Feature: As a User I want to view more options on the Reading Challenge details screen so that I can Leave the Challenge or Report abuse

@Reg @55598 @64379 @64382 @64383
Scenario Outline: Verify that user able to navigate to the Report Abuse screen when tap Report Abuse
      
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is participating in a challenge​
And ​User is on the Challenge Details screen
When User taps on the more icon​
Then ​User should be able to view the More menu is not the creator of the Reading Challenge
And User should be able to tap on the Report Abuse menu item and be navigated to the Report Abuse screen
And User should be able to tap on Cancel and navigate back to the Challenge details screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
