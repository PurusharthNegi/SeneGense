@RWD_CreateAChallenge_InviteRecentlySearchedFriends
Feature: 55349_RWD As a User I want to add participants from recently searched users list to a new Reading challenge I am creating so that I can challenge my friends to participate in the Reading challenge along with me

@Automation @RWD @55349_63947
  Scenario: TC20_RWD_Verify if tapping on add button takes you to the invite friends page
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
	Then User should be navigated to invite friend page


  @Automation  @RWD  @55349_63948
  Scenario: TC21_RWD_Verify if user is able to view the recently searched friends
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list

  @Automation  @RWD  @55349_63954 @55349 @Reg
  Scenario: TC27_RWD_Verify if user can remove the friend added unintentionally in "Invite recently searched friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should able to remove the added friend in search result screen

  @Automation  @RWD  @55349_63955
  Scenario: TC28_RWD_Verify the label of the "Add to challenge" button in "Invite recently searched friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list
    Then User should able to view Add to Challenge button

  @Automation  @RWD  @55349_63956
  Scenario: TC29_RWD_Verify if user can add the invitees to the challenge in "Invite recently searched friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should able to view Add to Challenge button

  @Automation  @RWD  @55349_63957 @55349 @Reg
  Scenario: TC30_RWD_Verify the navigation after adding the invitees in "Invite recently searched friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should able to view Add to Challenge button
    Then User should able to view the added friends name on create challenge screen

  @Automation  @RWD  @55349_63949
  Scenario: TC22_RWD_Verify if it just displays only 5 recent friends even when the user has searched many
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list
    Then User should be able to view the list of 5 recently searched friends

  @Automation @Regression @RWD  @55349_63952 @55349 @Reg
  Scenario: TC25_RWD_Verify if user is able to view the number of invitees and tap on "Invite" button in "Invite recently searched friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should be able to view the count of users invited on the Invite CTA


  @Automation @Regression @RWD  @55349_63953
  Scenario: TC26_RWD_Verify if user is able to add as many friends to the challenge in "Invite recently searched friends" screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    When User click on Add CTA Challenge friends button
    Then User should be navigated to invite friend page
    Then User should be able to view list of recently searched friends list
    Then User should be able to tap on Invite for a first friend to add them to the list of invitees
    Then User should be able to view the count of users invited on the Invite CTA





		