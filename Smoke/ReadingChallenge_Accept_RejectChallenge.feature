@ReadingChallenge_Accept_RejectChallenge
Feature: As a User I want to accept the invite for the reading challenge so that I can participate in the Reading Challenge or reject the invite for the reading challenge so that I can opt out of participating in it
@Reg @63502 @63503 @63504 @63505 @63506 @63507 @55592
Scenario Outline: Verify the user is able to view Reading Challenge bottom drawer
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA
And User should be able to view Reading Challenge bottom drawer
And User should be able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text 
And User should be able to view participants of the reading challenge 
And User should be able to view carousel of titles in the reading challenge
And User should be able to tap on Accept Challenge CTA to accept the reading challenge invite
And User should be navigated to the accept challenge confirmation screen
Examples: 
       | location | SchoolName | username | password |
      | New York |George Washington High School| phs14   | phs14   |
      
      
      
 @Reg @63508 @55592
Scenario Outline: Verify the user is able to reject the challenge
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA
And User should be able to view Reading Challenge bottom drawer
And User should be able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text 
And User should be able to view participants of the reading challenge 
And User should be able to view carousel of titles in the reading challenge
And User should be able to tap on No thanks CTA to reject the reading challenge invite
Examples: 
       | location | SchoolName | username | password |
      | New York |George Washington High School| phs14   | phs14   |
      
@Automation @Regression @TC107
Scenario Outline: TC107_IOS_Verify the user is able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA 
And User should be able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text 
Examples: 
      | location | SchoolName | username | password |
      | New York | Dlx BnT Digital Site | ph2      | ph2          |
      
@Manual @TC108
Scenario: TC108_IOS_Verify the user is able to view participants of the reading challenge
Given User is logged in
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA
And User should be able to view participants of the reading challenge 

@Manual @TC109
Scenario: TC109_IOS_Verify the user is able to view carousel of titles in the reading challenge
Given User is logged in
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA 
And User should be able to view carousel of titles in the reading challenge

@Automation @Regression @TC110
Scenario Outline: TC110_IOS_Verify the user is able to tap on Accept Challenge CTA to accept the reading challenge invite 
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA
And User should be able to tap on Accept Challenge CTA to accept the reading challenge invite
Examples: 
       | location | SchoolName | username | password |
      | New York | Dlx BnT Digital Site | ph2      | ph2          |
      
@Automation @Regression @TC111
Scenario Outline: TC111_IOS_Verify the user is navigated to the accept challenge confirmation screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA
And User should be navigated to the accept challenge confirmation screen
Examples: 
      | location | SchoolName | username | password |
      | New York | Dlx BnT Digital Site | ph2      | ph2          |

@Automation @Regression @TC112
Scenario Outline: TC112_IOS_Verify the user is able to tap on No thanks CTA to reject the reading challenge invite
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA
And User should be able to tap on No thanks CTA to reject the reading challenge invite
Examples: 
     | location | SchoolName | username | password |
      | New York | Dlx BnT Digital Site | ph2      | ph2          |
@Manual @TC113
Scenario: TC113_IOS_Verify the user is navigated back to Book Club landing screen with the challenge removed from the list of challenges displayed
Given User is logged in
And User is on the Book Club landing screen
And User has been invited to participate in a Reading Challenge
When User taps on the You have been challenged CTA
And User should be navigated back to Book Club landing screen with the challenge removed from the list of challenges displayed

  @Reg @63502 @63503 @63504 @63505 @63506 @63507 @55592
  Scenario Outline: Verify the user is able to view Reading Challenge bottom drawer
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    When User taps on the You have been challenged CTA
    And User should be able to view Reading Challenge bottom drawer
    And User should be able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text
    And User should be able to view participants of the reading challenge
    And User should be able to view carousel of titles in the reading challenge
    And User should be able to tap on Accept Challenge CTA to accept the reading challenge invite
    And User should be navigated to the accept challenge confirmation screen

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph6      | ph6      |

  @Reg @63508 @55592
  Scenario Outline: Verify the user is able to reject the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    When User taps on the You have been challenged CTA
    And User should be able to view Reading Challenge bottom drawer
    And User should be able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text
    And User should be able to view participants of the reading challenge
    And User should be able to view carousel of titles in the reading challenge
    And User should be able to tap on No thanks CTA to reject the reading challenge invite

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph6      | ph6      |

  @Automation @Regression @TC107
  Scenario Outline: TC107_IOS_Verify the user is able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    #When User taps on the You have been challenged CTA
    And User should be able to view Reading Challenge details such as Name Read By Date Description Challenge icon and Challenge Text

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph6      | ph6      |

  @Manual @TC108
  Scenario: TC108_IOS_Verify the user is able to view participants of the reading challenge
    Given User is logged in
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    When User taps on the You have been challenged CTA
    And User should be able to view participants of the reading challenge

  @Manual @TC109
  Scenario: TC109_IOS_Verify the user is able to view carousel of titles in the reading challenge
    Given User is logged in
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    When User taps on the You have been challenged CTA
    And User should be able to view carousel of titles in the reading challenge

  @Automation @Regression @TC110
  Scenario Outline: TC110_IOS_Verify the user is able to tap on Accept Challenge CTA to accept the reading challenge invite
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    #When User taps on the You have been challenged CTA
    And User should be able to tap on Accept Challenge CTA to accept the reading challenge invite

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph6     | ph6    |

  @Automation @Regression @TC111
  Scenario Outline: TC111_IOS_Verify the user is navigated to the accept challenge confirmation screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    When User taps on the You have been challenged CTA
    And User should be navigated to the accept challenge confirmation screen
    And User should be able to tap on Go to challenge CTA to navigate to Reading Challenge details screen

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph6      | ph6      |

  @Automation @Regression @TC112
  Scenario Outline: TC112_IOS_Verify the user is able to tap on No thanks CTA to reject the reading challenge invite
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    When User taps on the You have been challenged CTA
    And User should be able to tap on No thanks CTA to reject the reading challenge invite

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph6      | ph6      |

  @Manual @TC113
  Scenario: TC113_IOS_Verify the user is navigated back to Book Club landing screen with the challenge removed from the list of challenges displayed
    Given User is logged in
    And User is on the Book Club landing screen
    And User has been invited to participate in a Reading Challenge
    When User taps on the You have been challenged CTA
    And User should be navigated back to Book Club landing screen with the challenge removed from the list of challenges displayed


  @Automation @Regression @RWD @64040
  Scenario: RWD DESKTOP To verify that user should be able to tap on “Accept Challenge�? CTA to accept the reading challenge invite
    Given User is logged in
    And User is on the Book club landing Page
    And User has been invited to participate in a Reading Challenge
    When User taps on the �?You have been challenged" CTA
    Then User should be able to view Reading Challenge overlay
    And Check that user able to tap on "Accept Challenge" CTA and user should navigate to accept challenge confirmation screen
