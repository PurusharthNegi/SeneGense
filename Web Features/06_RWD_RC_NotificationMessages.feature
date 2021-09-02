@Rwd_ReadingChallenge
Feature: RC_Notification_Messages Functional Validation

  @Rwd_Messages_Validation_Sc6
  Scenario Outline: Messagecenter Validate Reading challenge
    Given Launch the Web Application
    When Enter the User Name and Password "<username>" and "<password>" click Submit button
    Then User is navigate to the message center Page
    Then Check Invited challenge message is available for participant
    Then Check view message for Scenario- RC Update name
    Then Check view message for Scenario- RC Update end date
    Then Check view message  for Scenario- RC Add new title
    Then Check view message for Scenario- RC Remove title
    Then Check view message for Scenario- RC Invite accepted
    Then Check view message and for Scenario- RC Invite rejected
    Then Check view any message for Scenario- RC Leave RC
		Then check view Report abuse message 
    Examples: 
      | username | password |
      | ph9     | ph9     |
