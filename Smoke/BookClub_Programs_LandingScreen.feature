@BookClubProgramsLandingScreen
Feature: As a user, I should be able to view the programs landing screen so that I can view the list of programs

  @Automation @TC_PL_001
  Scenario: verify that User should be able to view the programs listed based on the programs opted in by the user
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And verify that User should be able to view the programs listed based on the programs opted in by the user

  @Automation @TC_PL_002
  Scenario: verify that User should be able to view the Reading Challenge, Reading Programs and Public Programs tabs
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And User should be able to view the Reading Challenge, Reading Programs and Public Programs tabs

  @Automation @TC_PL_003
  Scenario: verify that User should be able to view list of Programs grouped as "Active Programs", "Draft Programs" and "Closed Programs"
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    Then verify User should be able to view list of Programs grouped as Active Programs, Draft Programs and Closed Programs are displayed

  @Automation @TC_PL_004
  Scenario: verify that User should be able to view Published Programs which user is participant of, assigned to
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify User should be able to view Published Programs which user is participant of assigned to or created by that User grouped under Active Programs displayed

  @Automation @TC_PL_005
  Scenario: verify that User should be able to view unpublished programs created by that user grouped under Draft Programs
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And User should be able to view unpublished programs created by that user grouped under Draft Programs displayed

  @Automation @TC_PL_006
  Scenario: verify that User should be able to view Closed Programs which user was participant of or were created by that User grouped under Closed Programs
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    Then Verify User should be able to view Closed Programs which user was participant of or were created by that User grouped under Closed Programs displayed

  @Automation @TC_PL_007
  Scenario: verify that User should not view “Draft Programs” section if there are no programs to be displayed in draft section
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    Then verify ser should not view Draft Programs section if there are no programs to be displayed in draft section

  @Automation @TC_PL_008
  Scenario: verify that User should not be able to see unpublished Programs if user is not creator of that Program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And verify User should not be able to see unpublished Programs if user is not creator of that Program

  @Automation @TC_PL_009
  Scenario: verify that User should be able to view the label ”Reading Program" that specifies this is a reading program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify that User should be able to view the label Reading Program that specifies this is a reading program

  @Automation @TC_PL_010
  Scenario: verify that User should be able to view “Read by Date” for the Reading Program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And verify user should be able to view Read by Date for the Reading Program

  @Automation @TC_PL_011
  Scenario: verify that User should be able to view the default icon specified for the reading program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And User should be able to view the default icon specified for the reading program

  @Automation @TC_PL_012
  Scenario: verify that User should be able to view the program title
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And verify User should be able to view the program title based on the type pf program

  @Automation @TC_PL_013
  Scenario: verify that User should be able to view the book cover default image
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify User should be able to view the book cover default image

  @Automation @TC_PL_014
  Scenario: verify that User should be able to view the program description provided during creation of program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And verify User should be able to view the program description provided during creation of program

  @Automation @TC_PL_015
  Scenario: verify that User will not be able to view any information if there was no description available during creation
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify User should not be able to view any information if there was no description available during creation

  @Automation @TC_PL_016
  Scenario: verify that User should be able to view the percentage of completion based on the progress made
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And verify User should be able to view the percentage of completion based on the progress made

  @Manual @TC_PL_017
  Scenario: verify that Application should be able to display the % ranging
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify that Application should be able to display the % ranging from 0% to 100%

  @Manual @TC_PL_018
  Scenario: verify that Application should calculate the progress percentage based on the book completion in the Program
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And verify that Application should calculate the progress percentage based on the book completion in the Program (ex: if there are 5 books in the Program and user completes reading one book, the completion percentage is 20%)

  @Manual @TC_PL_019
  Scenario: verify that User should be able to view the time spent by the user in the specific program for digital content only
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify User should be able to view the time spent by the user in the specific program for digital content only

  @Automation @TC_PL_020
  Scenario: verify that Application should be able to display the time in HH:MM format
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify Application should be able to display the time in HH:MM format

  @Automation @TC_PL_021
  Scenario: verify that User should be able to tap on a Program that they have created and be navigated to the Creator RP Details Screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify User should be able to tap on a Program that they have created and be navigated to the Creator RP Details Screen

  @Automation @TC_PL_022
  Scenario: verify that User should be able to tap on a Program that they are participating in and be navigated to the Participant RP details screen
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify User should be able to tap on a Program that they are participating in and be navigated to the Participant RP details screen

  @Automation @TC_PL_023
  Scenario: verify that User should be able to view a message saying there are no Reading Programs available if they are not participating in
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name location and SchoolName
    And Enter the User Name and Password UN and PWD click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User taps on the My Programs tab on the landing screen
    And Verify User should be able to view a message saying there are no Reading Programs available if they are not participating in or has not been invited to participate in any Program, along with the Add Program CTA
