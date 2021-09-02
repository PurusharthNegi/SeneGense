@CreateAChallenge_CreatorRCDetailsScreen_MoreIcon
Feature: As a User I want to view more options on the Reading Challenge details screen so that I can Edit the challenge or Leave the Challenge
 
@Reg @63459 @63460 @63461 @63462 @63465 @55575
  Scenario Outline: Verify user is able to see More Menu in RC detailed page
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    And User should be able to view the More menu Edit Challenge and Leave Challenge
    And User should be able to tap on Edit Challenge menu item and navigate to edit challenge screen
	And User should be able to tap on Cancel and navigate back to the Challenge details screen
    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |


@Reg @63463 @55575 
  Scenario Outline: Verify user is able to leave a challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    And User should be able to view the More menu Edit Challenge and Leave Challenge
    And User should be able to tap on the Leave Challenge menu item to leave the challenge
    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      

  @Automation @Regression @TC99
  Scenario Outline: TC99_IOS_Verify user is able to see More Menu in RC detailed page
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    And User should be able to view the More menu Edit Challenge and Leave Challenge

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Automation @Regression @TC100
  Scenario Outline: TC100_IOS_Verify the user tap on the More Menu system displays the list of Menus with Cancel button
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    Then User should be able to view the More menu Edit Challenge and Leave Challenge
    And User should be able to tap on Cancel and navigate back to the Challenge details screen

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Automation @Regression @TC101
  Scenario Outline: TC101_IOS_Verify the user is able to tap on Edit Challenge menu item and navigate to edit challenge screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    And User should be able to tap on Edit Challenge menu item and navigate to edit challenge screen

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Automation @Regression @TC103
  Scenario Outline: TC103_IOS_Verify the user able to tap on the Leave Challenge menu item to leave the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    And User should be able to tap on the Leave Challenge menu item to leave the challenge

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Manual @TC104
  Scenario: TC104_IOS_Verify the application should allow the Reading Challenge to continue with other participants after the creator has left the challenge until the end date of the challenge
    Given User is logged in
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    And Application should allow the RC to continue with other participants after the creator has left the challenge until the end date of the challenge
    And Application should close the RC if there are no participants left in the challenge

  @Automation @Regression @TC105
  Scenario Outline: TC105_IOS_Verify the user is able to tap on Cancel user should able to navigate back to the Challenge details screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User has created a challenge
    And User is on the Challenge Details screen
    When User taps on the more icon
    And User should be able to tap on Cancel and navigate back to the Challenge details screen

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
