@CreateAChallenge_ChallengeUpdation
Feature:  As a User I want to preform some additional actions on the Create Challenge screen so that I can remove invitees or titles that were added by mistake and so on
 
@Reg @64111 @64112 @64114 @64115 @64116 @64117 @64118 @64119 @64120 @64121 @64122 @59672
  Scenario Outline: Verify if user can add remove friend and title 
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    Then User should on book club option and navigated to the Create Challenge Screen
    Then Check that user should be able to enter the Challenge name and view the character count below the field 
    Then Check that user able to enter challenge description and view the character count below the field
  	Then Check that user able to see X icon on each participents avatar and able to tap on X icon
	And Check that user able to view the remove friend confirmation model
	And Tap on Remove CTA
	And Tap on Cancel CTA
	Then Check that user able to view the titles added in the form of carousel
   	Then Tap on X icon displayed on title image And Check that Title is removed from the carousel
    And Check that user able to seee Remove Title confirmation model 
    And Tap on Remove CTA for titles
    And Tap on Cancel CTA for titles
    And Check that user is navigated to create challenge screen without removing the titles
    Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx BnT Digital Site | ph5   | ph5   |

 