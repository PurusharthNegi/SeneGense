@CreateaChallenge_SetReadbydate
Feature: As a User I want to set the read by date while creating a new Reading challenge so that I can specify the end date of the challenge

@Reg @55564
  Scenario Outline: Verify user able to view and select date based on OS
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    Then User is on the Create Challenge Screen
    When User taps on the Set read by date CTA
    Then User should be able to view the OS native calendar displayed as a bottom drawer
 	Then User should be able to view the selected end date updated on the Create Challenge screen after selection
Examples: 

      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5    | ph5    |

   @Automation @Regression @TC43
  Scenario Outline: TC43_IOS_Verify user able to view and select date based on OS
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    Then User is on the Create Challenge Screen
     When User taps on the Set read by date CTA
    Then User should be able to view the OS native calendar displayed as a bottom drawer
 Examples: 

      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5    | ph5    |
  
  @Manual @TC44
  Scenario: TC44_IOS_Verify whether past dates are disabled
    Given User is logged in
    And User is on the Create Challenge Screen
    When User taps on the Set read by date CTA
    Then User should be able to select the required date (only current or future date) from the calendar as the end date of the challenge

  @Automation @Regression @TC45
  Scenario Outline: Verify user should be able to view the selected end date updated on the Create Challenge screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    Then User is on the Create Challenge Screen
    When User taps on the Set read by date CTA
    Then User should be able to view the selected end date updated on the Create Challenge screen after selection


Examples: 

      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5    | ph5    |
