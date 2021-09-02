@BookClubProgramsCreatorRPDetailsScreen
Feature: {1. [64684] [RWD] As an Admin User I want to create a new Reading program so that I can assign the Program to specific students or students can participate in the program.     2. [64685] [RWD] As an Admin user, I should be able to select program type to create specific type of reading program.  3. [64686] [RWD] As an Admin user, I should be able to set number of required books for the X out of Y type programs so that assignee can read set number of books from the list to complete the reading program}

  @Automation @Regression @RWD @TC_CRP_01 @RWD_Smoke
  Scenario: RWD_Desktop_To Verify if user can create a public RP Program with having a description
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    Then User should be able to enter the Program Name
    And Enter the description
    And Click on the Public program radio button
    Then User should be able to select the Program Type
    And User should be able to select the Start date and End date
    Then User should be able to set reminders for the challenge
    And User should be able to add students to the Program
    And User should be able to add Title to the Program
    Then Click on Publish program

#  @Automation @Regression @RWD @TC_CRP_012 @RWD_Smoke
#  Scenario: RWD_Desktop_To Verify if user can create a public RP Program with having a description
#    Given User is logged in
#    And User is on the Book club landing Page
#    Then Click on Open program tab
#    Then Click on create program link
#    And Click on the Public program radio button
#    And Enter the description
#    And user should be able to enter the required details
#    Then Click on Publish program

  @Automation @Regression @RWD @TC_CRP_013 @RWD_Smoke
  Scenario: RWD_Desktop_To Verify if user can create a private RP Program with having a description
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Enter the description
    And Click on the private program radio button
    And user should be able to enter the required details
    Then Click on Publish program

  @Automation @Regression @RWD @TC_CRP_014  @65048 @RWD_Smoke
  Scenario: RWD_To verify that user should be able to publish public program without any user added
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    Then User should be able to enter the Program Name
    And Enter the description
    And Click on the Public program radio button
    Then User should be able to select the Program Type
    And User should be able to select the Start date and End date
    Then User should be able to set reminders for the challenge
#    And User should be able to add students to the Program
    And User should be able to add Title to the Program
    Then Click on Publish program
    And Verify that User is navigated to the details screen

  @Automation @Regression @RWD @TC_CRP_015 @65049 @RWD_Smoke
  Scenario: RWD_To verify that user should not be able to publish private program if there is no user added
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    Then User should be able to enter the Program Name
    And Enter the description
    And Click on the private program radio button
    Then User should be able to select the Program Type
    And User should be able to select the Start date and End date
    Then User should be able to set reminders for the challenge
#    And User should be able to add students to the Program
    And User should be able to add Title to the Program
    Then Verify user is not able to publish program with user added

  @Automation @Regression @RWD @TC_CRP_016 @RWD_Smoke @65051
  Scenario: RWD_To verify that user should be able to tap on the "Save"
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Click on the Public program radio button
    And Enter the description
    And user should be able to enter the required details
    Then Click on Save program

  @Automation @Regression @RWD @TC_CRP_017 @RWD_Smoke @65052
  Scenario: RWD_To verify that user should be navigated back to the My programs page when user saves the program
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Click on the Public program radio button
    And Enter the description
    And user should be able to enter the required details
    Then Click on Save program
    And Verify user is navigated back to My program screen


  @Automation @Regression @RWD @TC_CRP_018 @RWD_Smoke @65053
  Scenario: RWD_To verify that user should be able to tap on the Delete Program CTA to discard the changes made
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Click on the Public program radio button
    And Enter the description
    And user should be able to enter the required details
    Then User tap on the Delete Program CTA to discard the changes made
    And Verify user is navigated back to My program screen

  @Automation @Regression @RWD @TC_CRP_019 @65054 @RWD_Smoke
  Scenario: RWD_To verify that user should be able to tap on the ‘X’ icon to discard the changes made
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Click on the Public program radio button
    And Enter the description
    Then User tap on the the ‘X’ icon to discard the changes made
    And Verify user is navigated back to My program screen

  @Automation @Regression @RWD @TC_CRP_020 @RWD_Smoke @65056
  Scenario: RWD_To verify that user should be able to save a program
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Click on the Public program radio button
    And Enter the description
    And user should be able to enter the required details
    Then Click on Save program

  @Automation @Regression @RWD @TC_CRP_021 @RWD_Smoke @65050
  Scenario: RWD_To verify that user should be navigated to the Reading Program details screen when user publishes program
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Enter the description
    And Click on the private program radio button
    And user should be able to enter the required details
    Then Click on Publish program
    And Verify that User is navigated to the details screen

  @Automation @Regression @RWD @TC_CRP_022 @RWD_Smoke @65041
  Scenario: RWD_To verify that user should be able to view a tooltip explaining what is a public program
    Given User is logged in
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And User taps on tooltip explaining what is a public program
    And Verify the CT is is displayed

#  @Automation @Regression @RWD @TC_CRP_023 @RWD_Smoke @65055
#  Scenario: RWD_To verify that user should be able to view a pop-up comprising of text saying, “A program already exists with this name.”
#    Given User is logged in
#    And User is on the Book club landing Page
#    Then Click on Open program tab
#    Then Click on create program link
#    Then User should be able to enter the Program Name
#    And Enter the description
#    And Click on the Public program radio button
#    Then User should be able to select the Program Type
#    And User should be able to select the Start date and End date
#    Then User should be able to set reminders for the challenge
#    And User should be able to add students to the Program
#    And User should be able to add Title to the Program
#    Then Click on Publish program
#    And Verify that System should throw the error message

  @Automation @Regression @RWD @TC_CRP_024 @65058,65058 @Create_program_X_of_Y_Books
    Scenario: RWD_To verify that user should not be able to publish the program
    Given User is logged in as Admin
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Verify User is able to see two types of program
    When User clicks on Select Program Type dropdown

  @Automation @Regression @RWD @TC_CRP_025 @65061,65062,65063,65064,65065 @Create_program_X_of_Y_Books
    Scenario: RWD_To verify that user should be able to view option to select number of required books and should not see the option to select the number of required books if program type selected is not X out of Y Books
    Given User is logged in as Admin
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    And Verify User is able to see two types of program
    When User clicks on Select Program Type dropdown
    Then user should be able to view option to select number of required books
    Then Verify user should be able to click on “Number of required Books” to view the list of numbers
    And Verify that user should be able to select a number from the drop down to set the number of books
    And Verify User is able to see two types of program
    And Select the Program type as Book in order option from the drop down
    And verify that user should not see the option to select the number of required books if program type selected is not X out of Y Books"
    And verify that Application should remove the option number of books required when Program Type is changed to “Books in Order”

  @Automation @Regression @RWD @TC_CRP_026 @65066 @Create_program_X_of_Y_Books
  Scenario: RWD_To verify that user should be able to view option to select number of required books and should not see the option to select the number of required books if program type selected is not X out of Y Books
    Given User is logged in as Admin
    And User is on the Book club landing Page
    Then Click on Open program tab
    Then Click on create program link
    Then User should be able to enter the Program Name
    And Enter the description
    And Verify User is able to see two types of program
    When User clicks on Select Program Type dropdown
    Then user should be able to view option to select number of required books
    Then Verify user should be able to click on “Number of required Books” to view the list of numbers
    And Verify that user should be able to select a number from the drop down to set the number of books
    And User should be able to select the Start date and End date
    Then User should be able to set reminders for the challenge
    And User should be able to add students to the Program
    Then User should not be able to publish the program if the total number of books in the reading list are less than “Number of Books” set
    And Verify that Publish Program button is disabled

  @Automation @Regression @RWD @TC_CRP_027 @65057,65060,64996 @Create_program_X_of_Y_Books
  Scenario: WD_RP_To verify that UI validation of My Programs - Landing Page Screen
    Given User is logged in as Admin
    And User is on the Book club landing Page
    Then Click on My program tab
    Then verify that UI validation of My Programs - Landing Page Screen

  @Automation @Regression @RWD @TC_CRP_028 @64997,64998 @Create_program_X_of_Y_Books
  Scenario: RWD_RP_To verify that user should be able to view the programs listed
    Given User is logged in as Admin
    And User is on the Book club landing Page
    And verify that user should be able to view the Challenges, My Programs and Open Programs tabs
    Then Click on Open program tab
    And Verify that User should be able to view the programs listed

  @Automation @Regression @RWD @TC_CRP_028 @64997,64998 @Create_program_X_of_Y_Books
  Scenario: RWD_RP_To verify that user should be able to view the programs listed
    Given User is logged in as Admin
    And User is on the Book club landing Page
    And verify that user should be able to view the Challenges, My Programs and Open Programs tabs
    Then Click on Open program tab




