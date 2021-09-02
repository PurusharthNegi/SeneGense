@ReadingChallenge_ChallengeAcceptedConfirmation
Feature: As a User I want to see the challenge accepted confirmation screen so that I know I have successfully accepted the challenge

@Automation @Regression @TC114
Scenario Outline: TC114_IOS_Verify user should be navigated to the challenge accepted screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the reading challenge bottom drawer
When User taps on the Accept Challenge CTA
Then User should be navigated to the challenge accepted screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Manual @TC115
Scenario: TC115_IOS_Verify challenge accepted screen should contain three sections Challenge accepted message section and Go to challenge button
Given User is logged in
And User is on the reading challenge bottom drawer
When User taps on the Accept Challenge CTA
Then User views the confirmation for accepting challenge with positive reinforcement message
And User should be able to tap on Go to challenge CTA to navigate to Reading Challenge details screen

@Automation @Regression @TC116
Scenario Outline: TC116_IOS_Verify the user views the confirmation for accepting challenge with positive reinforcement message
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the reading challenge bottom drawer
When User taps on the Accept Challenge CTA
Then User views the confirmation for accepting challenge with positive reinforcement message
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Automation @Regression @TC118
Scenario Outline: TC118_IOS_Verify the user is able to tap on Go to challenge CTA to navigate to Reading Challenge details screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the reading challenge bottom drawer
When User taps on the Accept Challenge CTA
And User should be able to tap on Go to challenge CTA to navigate to Reading Challenge details screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Automation @Regression @TC118.1
Scenario Outline: TC118.1_IOS_Verify the user should able to tap on the X icon and navigate back to the Book Club Landing Screen with the challenge added to the users list of participating challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the reading challenge bottom drawer
When User taps on the Accept Challenge CTA
And User should able to tap on the X icon and navigate back to the Book Club Landing Screen with the challenge added to the users list of participating challenge
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
      
