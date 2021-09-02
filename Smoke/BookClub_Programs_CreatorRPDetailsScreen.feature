@BookClubProgramsCreatorRPDetailsScreen
Feature: As a user, I should be able to view the programs details screen for the Programs that I have created

  @Automation @TC_CRP_001
  Scenario: verify that User should be navigated to the Program details screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And verify User should be navigated to the Program details screen

  @Automation @TC_CRP_002
  Scenario: verify that User should be able view program name as header
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And User should be able view program name as header

  @Automation @TC_CRP_003
  Scenario: verify that User should be able to view personal details such as their Avatar, Name and Created date for the Program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And Verify User should be able to view personal details such as their Avatar, Name and Created date for the Program

  @Automation @TC_CRP_004
  Scenario: verify that User should be able to view Reading Program details
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And verify User should be able to view Reading Program details such as Reading Program Icon, Name, Description, Start Date, End date, Status, Visibility, Reminders and Program type

  @Automation @TC_CRP_005
  Scenario: verify that User will not be able to view any information if there was no description available during creation
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And Verify User will not be able to view any information if there was no description available during creation

  @Automation @TC_CRP_006
  Scenario: verify that User should view Start date, End date or Reminders as blank if not set yet
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And Verify User should view Start date, End date or Reminders as blank if not set yet

  @Automation @TC_CRP_007
  Scenario: verify that Application should set the program status unpublished as default, if program is not published
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And Verify Application should set the program status unpublished as default, if program is not published

  @Automation @TC_CRP_008
  Scenario: verify that User should be able to view list of books added to the reading program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And Verify User should be able to view list of books added to the reading program

  @Automation @TC_CRP_009
  Scenario: Verify that User should be able to view order for the books in the reading list for the program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And Verify User should be able to view order for the books in the reading list for the program type Books in Order

  @Automation @TC_CRP_010
  Scenario: verify that User should be able to view list of assignees/participants and Progress status
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And verify User should be able to view list of assignees or participants and Progress status for each one

  @Automation @TC_CRP_011
  Scenario: verify that User should be able to tap on back button to navigate back to the My Programs tab
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program created by that user
    And Verify User should be able to tap on back button to navigate back to the My Programs tab



