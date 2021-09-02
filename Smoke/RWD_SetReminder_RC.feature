@RWD_SetReminder_RC
Feature: 55351_As a User I want to add the reminder details while creating a new Reading challenge so that I can specify the frequency at which the participants of the challenge should receive reminders.

@Automation @Regression @RWD @55351_63970 @55351 @Reg
  Scenario Outline: TC11_RWD_Desktop_Verify if user is able set reminders by tapping on the required option​
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User sets reminder "<ReminderTypes>" with read by date
  Examples:
    | ReminderTypes |
    | None          |
    | Daily         |
    | Weekly        |
    | Monthly       |



