@ReadingChallenge_ParticipantRCDetailsScreen
Feature: As a User I want to view the challenge details screen after accepting a challenge so that I can view the contents of the challenge

 @Reg @63528 @63529 @63530 @63531 @63532 @63533 @55596
Scenario Outline: Verify user able to navigate to Challenge details screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has accepted the invitation to participate in a challenge
When User taps on Go to Challenge CTA on the Challenge Accepted Screen
And User should be navigated to the Challenge details screen
And User should be able to view their avatar name and the date of creation of the challenge
And User should be able to view the Challenge icon Challenge Text Challenge Name End date of the challenge and description of the challenge
And User should be able to view the other participants of the challenge
And User should be able to tap on the more icon and view the more menu related to the reading challenge
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph6    | ph6   |

@Automation @Regression @TC120
Scenario Outline: TC120_IOS_Verify user able to navigate to Challenge details screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has accepted the invitation to participate in a challenge
When User taps on Go to Challenge CTA on the Challenge Accepted Screen
And User should be navigated to the Challenge details screen
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph6    | ph6   |

@Automation @Regression @TC121
Scenario Outline: TC121_IOS_User should be able to view their personal details such as their avatar name and the date of creation of the challenge in Participant RC Details screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has accepted the invitation to participate in a challenge
When User taps on Go to Challenge CTA on the Challenge Accepted Screen 
And User should be able to view their avatar name and the date of creation of the challenge
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph6    | ph6   |
      
@Automation @Regression @TC122
Scenario Outline: TC122_IOS_User should be able to view the Challenge icon Challenge Text Challenge Name End date of the challenge and description of the challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has accepted the invitation to participate in a challenge
When User taps on Go to Challenge CTA on the Challenge Accepted Screen
And User should be able to view the Challenge icon Challenge Text Challenge Name End date of the challenge and description of the challenge
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph6    | ph6   |

      
@Automation @Regression @TC123
Scenario Outline: TC123_IOS_Verify user able to verify participants for the challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has accepted the invitation to participate in a challenge
When User taps on Go to Challenge CTA on the Challenge Accepted Screen 
And User should be able to view the other participants of the challenge
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph6    | ph6   |
      
@Manual @TC124
Scenario Outline: TC124_IOS_Verify user able to view his or her own progress for each of the titles in that reading challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has accepted the invitation to participate in a challenge
When User taps on Go to Challenge CTA on the Challenge Accepted Screen 
And User should be able to view his or her own progress for each of the titles in that reading challenge
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph6    | ph6   |
      
@Automation @Regression@TC125
Scenario Outline: TC125_IOS_Verify user tap on the more icon and view the more menu related to the reading challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has accepted the invitation to participate in a challenge
When User taps on Go to Challenge CTA on the Challenge Accepted Screen 
And User should be able to tap on the more icon and view the more menu related to the reading challenge
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph6    | ph6   |

