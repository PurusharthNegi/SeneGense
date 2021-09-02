@BookClubProgramsParticipantRPDetailsScreen
Feature: As a user, I should be able to view the programs details screen for the Programs that I am enrolled in

  @Automation @TC_PRP_001
  Scenario: verify that User should be navigated to the Program details screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen

  @Automation @TC_PRP_002
  Scenario: To verify that User should be able view program name as header
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User should be able view program name as header

  @Automation @TC_PRP_003
  Scenario: verify that User should be able to view details of the creator such as their Avatar, Name and Created date for the Program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify ser should be able to view details of the creator such as their Avatar, Name and Created date for the Program

  @Automation @TC_PRP_004
  Scenario: verify that User should be able to view Reading Program details
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User should be able to view Reading Program details such as Reading Program Icon, Name, Description, Start Date, End date, Status, Visibility and Reminders, Program Type

  @Automation @TC_PRP_005
  Scenario: verify that User should not be able to view any information if there was no description available during creation
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User should not be able to view any information if there was no description available during creation

  @Automation @TC_PRP_006
  Scenario: verify that User should be able to view list of books added to the reading program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User should be able to view list of books added to the reading program

  @Automation @TC_PRP_007
  Scenario: verify that User Should be able to view users own progress for the each title in that reading program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User Should be able to view users own progress for the each title in that reading program

  @Automation @TC_PRP_008
  Scenario:  verify that User should be able to view order for the books in the reading list for the program type “Books in Order”
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User should be able to view order for the books in the reading list for the program type Books in Order

  @Automation @TC_PRP_009
  Scenario: verify that User should not be able to view next book in order until user has completed the preceding book
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User should not be able to view next book in order until user has completed the preceding book

  @Automation @TC_PRP_010
  Scenario: verify that User should be able to view list of Participants for the reading Program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on a program that they are enrolled in
    And User should be navigated to the Program details screen
    And Verify User should be able to view list of Participants for the reading Program