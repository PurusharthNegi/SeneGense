@Create_Reading_Challenge_Smoke
Feature: Verify the Reading challenge Feature smoke

  @RC_Smoke @MC_Smoke
  Scenario Outline: Verify the Reading challenge functionality smoke test
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page
    And Validate Create Challenge Icon
    And Validate Enter Challenge Name
    And Validate Enter Challenge Description
    And Validate Search and add invite Friend
    And Validate Set Reminder
    And Validate Set Read By Date
    And Validate Search and Add Title
    And Validate Save the Challenge with details
    And Validate Create Challenge
    And Validate Edit Challenge
    And Validate Verify the created challenge in creater challenge dashboard
    And Login as Invited user "<username1>" and "<password1>" click submit button
    And Verify and Handle Set Preference Page
    And Accept challenge and challenge confirmation page
    And Validate the challenge details when participant click on it on Challenge dashboard
    And Verify the message related to RC invite
    # And Verify the unread message appears in top order of the page
    # And Verify the read message appears below the unread message
    # And Verify latest message appears on top of the message list
    And Verify user able to navigate inside the message details screen

    Examples: 
      | location | SchoolName                    | username | password | username1 | password1 |
      | New York | Photon_03_Site_A, McHenry, IL | ph5      | ph5      | ph3       | ph3       |
#      | New York | Photon_14  | ph14a1   | ph14a1   | ph14a1    | ph14a2    |
