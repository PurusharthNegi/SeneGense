Feature: RP Smoke validation

@Rwd_RP_ProgramScreen_Smoke
Scenario Outline: Validate Reading Program
Given Launch the Web Application
When Enter the User Name and Password "<username>" and "<password>" click Submit button
Then Navigate to Reading Program and validate
And Verify admin able to create a program successfully
Then Verify user able to Logout from Application
And Login as Invited user "<iUserName>" and "<iPassword>" click submit button
And Open the Programs Landing screen with Ongoing Program for Student 
And validate joins the program successfully
Then Validate reading program 
Then Validate challenges my program and open program tabs


  Examples: 
      | username | password | iUserName | iPassword |
      | pha1       | pha1       | ph6       | ph6     |