@CreateAChallenge_SetReminders
Feature: As a User I want to add the reminder details while creating a new Reading challenge so that I can specify the frequency at which the participants of the challenge should receive reminders

  @Automation @Regression @TC41 @55563
  Scenario Outline: Verify if user is able set reminders by tapping on the required option
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Create Challenge Screen
    When User taps on the Set reminders CTA
    Then User should be able to view the reminders options displayed in a bottom drawer
    And User should be able to select Daily Weekly or Monthly Reminders by tapping on the required option

   Examples: 
    | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5    | ph5    |

  @Manual @TC42
  Scenario: TC42_IOS_To verify the UI of the create challenge screen after setting the reminder
    Given User is logged in
    And User is on the Create Challenge Screen
    When User taps on the Set reminders CTA
    Then User should view the selected reminder frequency updated on the Create Challenge screen
