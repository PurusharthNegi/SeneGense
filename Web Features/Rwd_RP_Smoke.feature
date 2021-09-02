Feature: RP Smoke validation

@Rwd_RP_Smoke
Scenario Outline: Validate Reading Program
Given Launch the Web Application
When Enter the User Name and Password "<username>" and "<password>" click Submit button
Then Navigate to Reading Program and validate
And Verify admin able to create & save the program successfully
#And Verify admin publish the saved program successfully   issue raised- 83010
And Verify the created program in dashboard as Admin in Active section
And Clicking on the program card should show Program details in the My program tab
#Login as a Participant or Student
And Enter the User Name and Password "<iUserName>" and "<iPassword>" click Submit button
#And Open Programs Landing screen with Upcoming Program for Student 
And Open Programs Landing screen with Ongoing Program for Student 
And Clicking on the created program card should show Program details on open program
And Students open a program and joins the program successfully
And Post student joined, the public program should show on my program tab
#MessageCentre
And Verify the message related to RP invite
And Verify user able to access menu in the dropdown
And Verify the user able to delete Messages from the list
And Verify latest message appears on top of the message list
And Verify user able to navigate inside the message details screen



   Examples: 
      | username | password | iUserName | iPassword |
      | pha1       | pha1       | ph6       | ph6     |