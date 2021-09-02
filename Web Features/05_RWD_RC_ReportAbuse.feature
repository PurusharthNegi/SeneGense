@Rwd_ReadingChallenge
Feature: RC_ReportAbuse Functional Validation

  @Rwd_ReportAbuse_Sc5
  Scenario Outline: ReportAbuse Validate Reading challenge
    Given Launch the Web Application
    When Enter the User Name and Password "<username>" and "<password>" click Submit button
    And Log into the app and navigate to reading challenge
    Then User is navigate to the challenge Name
    Then user able to navigate to the Report Abuse screen
    Then User should not submit CTA should not be enabled unless min characters are entered in grievance details
    Then user able to enter grievance details with max length of characters
   

    Examples: 
      | username | password |
      | pha1     | pha1     |
