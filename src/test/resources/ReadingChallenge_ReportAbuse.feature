@ReadingChallengeReportAbuse
Feature: As a User I want to report abuse for the reading challenge so that I can submit my grievance against the reading challenge  

@Automation @Regression @TC250_1
Scenario Outline: TC250_1_Verify that user able to navigate to the Report Abuse screen when tap Report Abuse
      
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC250_2
Scenario Outline: TC250_2_Verify that user able to view brief description for reporting abuse 
      
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Manual @TC250_3
Scenario: TC250_3_Verify that user able to enter grievance details 
      
Given User is logged in
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with maximum / minimum character limit of X

@Automation @Regression @TC250_4
Scenario Outline: TC250_4_Verify that user able to submit the abuse report with input of grievance details 
  
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with maximum / minimum character limit of X
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Manual @TC250_5
Scenario: TC250_5_Verify that user able to submit the abuse report without grievance details 
  
Given User is logged in
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to submit the abuse report 

@Automation @Regression @TC250_6
Scenario Outline: TC250_6_Verify that user able to view Confirmation message when submit abuse report  
    
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with maximum / minimum character limit of X 
And User should be able to submit the abuse report 
And User should get confirmation message on successful submission of abuse report
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
@Automation @Regression @TC250_7
Scenario Outline: TC250_7_Verify that application is navigated back to the Reading Challenge details screen when user submit the abuse report  
  
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the more menu options of Reading Challenge details screen
And  User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with maximum / minimum character limit of X 
And User should be able to submit the abuse report 
And User is navigated back to the Reading Challenge details screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Manual @TC250_8
Scenario: TC250_8_Verify that user able to enter grievance details with min length of characters   
  
Given User is logged in
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with  minimum character limit of X 


@Manual @TC250_9
Scenario: TC250_9_Verify that user able to enter grievance details with max length of characters    
  
Given User is logged in
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with maximum character limit of X 


@Manual @TC250_10
Scenario: TC250_10_Verify that UI behavior when user enter grievance details with min-1 length of characters     
  
Given User is logged in
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with min-1 character limit of X 


@Manual @TC250_11
Scenario: TC250_11_Verify that UI behavior when user enter grievance details with max+1 length of characters      
  
Given User is logged in
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be navigated to the Report Abuse screen
And User should be able to view brief description for reporting the abuse 
And User should be able to enter grievance details for the abuse with max +1 character limit of X 


@Automation @Regression @TC250_12
Scenario Outline: TC250_12_Verify that user able to tap back button to navigate back to the Reading Challenge details screen        
  
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the more menu options of Reading Challenge details screen
And User is not the creator of the Reading Challenge
When User taps on Report Abuse CTA
Then User should be able to tap on back button to navigate back to the Reading Challenge details screen 
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |


# nothing to worry 

