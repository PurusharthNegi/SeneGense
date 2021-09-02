Feature: Validating Login Function

  @Automation @Regression @RWD @RC_Smoke @RC_Smoke1
  Scenario: RWD_Desktop_To Verify if user can start the challenge successfully
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    And User should be able to tap on the start Challenge CTA after filling all the mandatory fields with "ph3" and "Harry" title

  @Automation @Regression @RWD @RC_Smoke @RC_Smoke2
  Scenario: RWD DESKTOP To verify that user should be able to tap on Accept Challenges CTA to accept the reading challenge invite
    Given User is logged in user name "user3" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the You have been challenged CTA RWD
    Then User should be able to view Reading Challenge overlay
    And Check that user able to tap on Accept Challenge CTA and user should navigate to accept challenge confirmation screen
	
@Automation @Regression @RWD @RP_Smoke @RP_Smoke1
Scenario: RWD Desktop To verify user able to publish a publich program and student able to view the program
		Given User is logged in user name "user9" and password on DLX env
    And User is on the Book club landing Page
    Then Click on My program tab
    Then Click on create program link
    Then User should be able to enter the Program Name
    And Enter the description
    And Click on the Public program radio button
    Then User should be able to select the Program Type
    And User should be able to select the Start date and End date
    Then User should be able to set reminders for the challenge
    And User should be able to add students "ph3" to the Program
    And User should be able to add Title to the Program
    Then Click on Publish program	
    Then User logout from application successfully
    Given User is logged in user name "user3" and password on DLX env
    Then Click on Open program tab
    Then User should able to view the created program in my progrom listing screen
    
    @Automation @Regression @RWD @RP_Smoke @RP_Smoke2
Scenario: RWD Desktop To verify user able to publish a private program and student able to view the program
		Given User is logged in user name "user9" and password on DLX env
    And User is on the Book club landing Page
    Then Click on My program tab
    Then Click on create program link
    Then User should be able to enter the Program Name
    And Enter the description
    And Click on the private program radio button
    Then User should be able to select the Program Type
    And User should be able to select the Start date and End date
    Then User should be able to set reminders for the challenge
    And User should be able to add students "ph3" to the Program
    And User should be able to add Title to the Program
    Then Click on Publish program	
    Then User logout from application successfully
    Given User is logged in user name "user3" and password on DLX env
    Then Click on My program tab
    Then User should able to view the created program in my progrom listing screen
    
    @Automation @Regression @RWD @RP_Smoke @RP_Smoke3
Scenario: RWD Desktop To verify user able to publish a publich program and able to view the program in my program as admin
		Given User is logged in user name "user9" and password on DLX env
    And User is on the Book club landing Page
    Then Click on My program tab
    Then Click on create program link
    Then User should be able to enter the Program Name
    And Enter the description
    And Click on the Public program radio button
    Then User should be able to select the Program Type
    And User should be able to select the Start date and End date
    Then User should be able to set reminders for the challenge
    And User should be able to add students "ph3" to the Program
    And User should be able to add Title to the Program
    Then Click on Publish program	
    Then User logout from application successfully
    Given User is logged in user name "user9" and password on DLX env
    Then Click on My program tab
    Then User should able to view the created program in my progrom listing screen
    
    
    
  @Automation @Regression @RWD @RP_Smoke @RP_Smoke4
Scenario: RWD Desktop To verify user able to join the program
   Given User is logged in user name "user9" and password on DLX env   
   And User is on the Book club landing Page
   Then Click on Open program tab
	 Then Check Ongoing program Enabled
	 Then Check Upcomming program Enabled
   Then Click created public program card and show program details
   And Check able to "Join Program"

   @Smoke_RP_Mob
  Scenario Outline: Mobile To verify the user can able to view details and join the programs available in myprogram tab
      Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book Club landing screen
    Then User should be able to tap on My Programs
    Then User should be able to see My Programs Landing screen with Active Draft Closed Programs
    Then Clicking on any Program card should open Program details on My Program Tab
    Then User should be able to tap on Open Programs
    Then User should be able to see Open Programs Landing screen with Ongoing and upcoming programs
    Then Clicking on any Program card should open Program details on Open Program Tab
    Examples:
     | location | SchoolName                    | username | password |
     | New York | Dlx Bnt Digital Site          | ph3      | ph3      |
