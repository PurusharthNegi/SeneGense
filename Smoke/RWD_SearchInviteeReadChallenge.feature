@RWD_SearchInviteeReadChallenge
Feature: 55350_As a User I want to search for other users and add them to a new Reading challenge I am creating so that I can challenge my friends to participate in the Reading challenge along with me.

@Automation  @RWD @55350_63959 @55350 @Reg
  Scenario: TC31_RWD_Verify the search functionality in "invite friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
	Then User should be navigated to invite friend page
    Then User should view the Search Student name search box
    When User search with "pho" three characters keyword in search box
    Then User should be able to view the suggested search results based on the search input
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees



  @Automation  @RWD @55350_63960
  Scenario: TC32_RWD_Verify if search suggestions are available when search string is more than 3 characters
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should view the Search Student name search box
    When User search with "pho" three characters keyword in search box
    Then User should be able to view the suggested search results based on the search input

  @Automation  @RWD @55350_63961 @55350 @Reg
  Scenario: TC33_RWD_Verify if search suggestions are provided when search string has 2 or less characters
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should view the Search Student name search box
    When User search with "ph" three characters keyword in search box
    Then User should not able to view search suggestions

  @Automation @Regression @RWD @55350_TC36 @55350
  Scenario: TC36_RWD_Verify if user is able to add as many friends to the challenge in "Search & invite friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should view the Search Student name search box
    When User search with "pho" three characters keyword in search box
    Then User should be able to view the suggested search results based on the search input
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees

  @Automation  @RWD @55350_63965 @55350 @Reg
  Scenario: TC37_RWD_Verify if user can remove the friend added unintentionally in "Search & invite friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should view the Search Student name search box
    When User search with "pho" three characters keyword in search box
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should able to remove the added friend in search result screen

  @Automation  @RWD @55350_63966
  Scenario: TC38_RWD_Verify the label of the "Add to challenge" button in "Search & invite friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should view the Search Student name search box
    When User search with "pho" three characters keyword in search box
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should able to view Add to Challenge button

  @Automation @RWD @55350_63967 @55350 @Reg
  Scenario: TC40_RWD_Verify the navigation after adding the invitees in "Search & invite friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should view the Search Student name search box
    When User search with "pho" three characters keyword in search box
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should able to view Add to Challenge button
    Then User should able to view the added friends name on create challenge screen


