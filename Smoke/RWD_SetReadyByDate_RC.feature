@RWD_SetReadyByDate_RC
Feature: 55352_As a User I want to set the read by date while creating a new Reading challenge so that I can specify the end date of the challenge.

@Automation @RWD @55352_63973
  Scenario: TC08_RWD_Desktop_Verify user able to view and select date based on OS.
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be able to view the calendar pop-up up on clicking on set ready by date calender icon
    Then User should see that past dates are disabled
    When User selects future date from calender popup


  @Automation @RWD @55352_63974 @55352 @Reg
  Scenario: TC09_RWD_DesktopVerify whether past dates are disabled
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be able to view the calendar pop-up up on clicking on set ready by date calender icon
    Then User should see that past dates are disabled



  @Automation @RWD @55352_63975 @55352 @Reg
  Scenario: TC10_RWD_Desktop_Verify user should be able to view the selected end date updated on the Create Challenge screen
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be able to view the calendar pop-up up on clicking on set ready by date calender icon
    Then User should see that past dates are disabled
    When User selects future date from calender popup
    Then User should see the selected date in create challenge screen


