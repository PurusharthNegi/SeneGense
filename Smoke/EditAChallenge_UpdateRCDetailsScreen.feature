@ReadingChallenge_ParticipantRCDetailsScreen
Feature: As a User I want to view more options on the Reading Challenge details screen so that I can Edit the challenge or Leave the Challenge

@Reg @64473 @64474 @64475 @64476 @64477 @64478 @64479 @64480 @55567
Scenario Outline: Verify user should be able to edit challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to update challenge screen
And User should be able to tap done to save changes to navigate back to challenge screen
Examples: 
     | location | SchoolName                    | username | password |
      | New York |Dlx BnT Digital Site | ph6    | ph6    |

          
@Reg @64473 @64474 @64475 @64476 @64477 @64478 @64479 @64481 @55567
Scenario Outline:Verify user should be able to edit challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to update challenge screen
And User should be able to tap on back button to go back to challenge details screen without saving
Examples: 
     | location | SchoolName                    | username | password |
      | New York |Dlx BnT Digital Site | ph6    | ph6    |

@Reg @59689 @64141 @64142 @64143 @64144 @64145 @64146
Scenario Outline: As a User I want to Edit the reading challenge after publishing it
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to update, remove and add challenge description
And User should be able to select and update Daily Weekly or Monthly Reminders
And User should be able to add more friends to the challenge by tapping on Add CTA
And User should be able to select and update read by date
And User should be able to add more titles to the challenge by tapping on the Add Titles CTA
And User should be able to tap done to save changes to navigate back to challenge screen

Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
@Reg @59689 @64148
Scenario Outline: Verify user should be able to tap on back button to go back to challenge details screen without saving
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to tap on back button to go back to challenge details screen without saving
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

@Reg @59689 @64147
Scenario Outline: To verify the Cancel CTA
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User taps on Cancel button to navigate to the challenge details screen

Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

 @Reg @59708 @64165
Scenario Outline: To verify the Save option by using the Start challenge button
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge listing screen
When User taps on the Edit Challenge
And  User should be navigated to edit challenge screen with Edit Challenge as screen title
And  User should be able to go back to challenge details screen without saving

Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

@Reg @64160 @64161 @64162 @64163 @64164 @64165 @59708
Scenario Outline:I want to Edit the reading challenge in draft status and publish it
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge listing screen
When User taps on the Edit Challenge
And User should be navigated to edit challenge screen with Edit Challenge as screen title
And User should be able to update, remove and add challenge description 
And User should be able to add more friends to the challenge
And User should be able to select and update Daily, Weekly or Monthly reminders
And User should be able to select and update read by date
And User should be able to add more titles to the challenge by tapping on the Add Titles CTA
And User  User should be able to save changes and publish the challenge
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
         
@Reg @59708 @64166
Scenario Outline: To verify the Cancel CTA
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge listing screen
When User taps on the Edit Challenge
And  User should be navigated to edit challenge screen with Edit Challenge as screen title
And  User should be able to go back to challenge details screen without saving

Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      	
@Reg @59708 @64167
Scenario Outline: To verify the Delete CTA
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge listing screen
When User taps on the Edit Challenge
And  User should be navigated to edit challenge screen with Edit Challenge as screen title
And User should be able to delete the unpublished challenge and navigate back to the Challenge Listing Screen 
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

@Reg @59708 @64168
Scenario Outline: Verify the Back button fuctionality
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge listing screen
When User taps on the Edit Challenge
And  User should be navigated to edit challenge screen with Edit Challenge as screen title
And User should be able to go back to challenge listing screen without saving
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |    
  
@Automation @Regression @TC_125_14
Scenario Outline: TC_125_14_IOS_Verify user should be navigated to edit challenge screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

@Automation @Regression @TC_125_15
Scenario Outline: TC_125_15_IOS_Verify user should be able to update challenge screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to update challenge screen
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |


@Automation @Regression @TC_125_16
Scenario Outline: TC_125_16_IOS_Verify user should be able to update remove and add challenge description
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to update, remove and add challenge description
Examples: 
    | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

@Automation @Regression @TC_125_17
Scenario Outline: TC_125_17_IOS_Verify user should be able to add more friends to the challenge by tapping on Add CTA
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to add more friends to the challenge by tapping on Add CTA
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |


@Automation @Regression @TC_125_18
Scenario Outline: TC_125_18_IOS_Verify user should be able to select and update Daily Weekly or Monthly Reminders
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to select and update Daily Weekly or Monthly Reminders
Examples: 
    | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |


@Automation @Regression @TC_125_19
Scenario Outline: TC_125_19_IOS_Verify user should be able to select and update read by date
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to select and update read by date
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

@Automation @Regression @TC_125_20
Scenario Outline: TC_125_20_IOS_Verify user should be able to add more titles to the challenge by tapping on the Add Titles CTA
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to add more titles to the challenge by tapping on the Add Titles CTA
Examples: 
       | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
@Automation @Regression @TC_125_21
Scenario Outline: TC_125_21_IOS_Verify user should be able to tap done to save changes to navigate back to challenge screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to tap done to save changes to navigate back to challenge screen
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
@Automation @Regression @TC_125_22
Scenario Outline: TC_125_22_IOS_Verify user should be able to tap on back button to go back to challenge details screen without saving
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to tap on back button to go back to challenge details screen without saving
Examples: 
        | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

