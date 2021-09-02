@CreateaChallenge_CreatorRCDetailsScreen
Feature: As a User I want to Start the Reading Challenge and view the Challenge details screen confirmation toast so that I know that the challenge has started
  
   @Reg @63443 @63445 @63446 @63447 @63448 @55574
  Scenario Outline: verify the challenge detail screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to view their avatar name and the date of creation of the challenge
    And User should be able to view the Challenge icon Challenge Text Challenge Name End date of the challenge  description of the challenge
    And User should be able to view the list of participants invited to participate in the challenge
    And User should be able to tap on the more icon and view the more menu related to the reading challenge
    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
        

@Reg @59761 @64256 @64257 @64258 @64261 @64263
  Scenario Outline: TC90_Click the start challenge button and verify the challenge detail screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to view their avatar name and the date of creation of the challenge
    And User should be able to view the Challenge icon Challenge Text Challenge Name End date of the challenge  description of the challenge
    And User should be able to view the list of participants invited to participate in the challenge
    And User should be able to tap on the more icon and view the more menu related to the reading challenge
 Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
  @Reg @68886
  Scenario Outline: As User I want to view the list of participants displayed under the heading 'Particpants' and not 'Leaderboard'
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is a creator or participant of a Reading challenge 
    And User navigates to the RC details screen
    And  User should be able to view list of participants displayed under the heading 'Participants' and not 'Leaderboard'
    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5    | ph5    |

  @Automation @Regression @TC90
  Scenario Outline: TC90_Click the start challenge button and verify the challenge detail screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Manual @TC91
  Scenario: TC91_IOS_Verify the toast message should disappear in 3s
    Given User is logged in
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to view a toast message which disappears in 3 seconds confirming that the challenge is published and invitations have been sent to participants

  @Automation @Regression @TC92
  Scenario Outline: TC92_User should be able to view theirpersonal details such as their avatar name and the date of creation of the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to view their avatar name and the date of creation of the challenge

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Automation @Regression @TC93
  Scenario Outline: TC93_User should be able to view the Challenge icon Challenge Text End date of the challenge title  description of the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to view the Challenge icon Challenge Text Challenge Name End date of the challenge  description of the challenge

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Automation @Regression @TC94
  Scenario Outline: TC94_Verify the participants for the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to view the list of participants invited to participate in the challenge

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Automation @Regression @TC95
  Scenario Outline: TC95_Verify User should be able to tap on the more icon and view the more menu related to the reading challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to tap on the more icon and view the more menu related to the reading challenge

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Manual @TC97
  Scenario Outline: TC97_IOS_Verify User should be able to view his or her own progress for each of the titles in that reading challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User adds the required details and taps on the Start Challenge
    Then User should be navigated to the Challenge details screen
    And User should be able to view his or her own progress for each of the titles in that reading challenge

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
