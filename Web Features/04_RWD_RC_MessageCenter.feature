@Rwd_ReadingChallenge
Feature: RC_MessageCenter Functional Validation

  @Rwd_MessageCenter_Sc4
  Scenario Outline: Messagecenter Validate Reading challenge
    Given Launch the Web Application
    When Enter the User Name and Password "<username>" and "<password>" click Submit button
    Then User is navigate to the message center Page
    Then User should able select and see messages
    Then Check last messsage display first
    Then User should get invite message in message center Page

    Examples: 
      | username | password |
      | pha1     | pha1     |
