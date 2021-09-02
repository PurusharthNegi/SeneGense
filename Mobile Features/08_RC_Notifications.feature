@Reading_Challenge
Feature: Verify the Notification realted to Reading Challenge - RC Notifications

  @RC_Notifications @Reading_Challenge
  Scenario Outline: Verify user can able to view the various type of notification related to RC
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
  	And Create New challenge
  	And Login as Invited user "<username1>" and "<password1>" click submit button
 	And Verify and Handle Set Preference Page  
 	And Verify invited user recieved challenge invite
    And Accept challenge from message center
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Verify creator recieved challenge accepted notification
    And Add new title to the challenge
   	And Login as Invited user "<username1>" and "<password1>" click submit button
   	And Verify and Handle Set Preference Page 
   	And Verify invited user recieved title added notification
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Remove title from challenge	
  	And Login as Invited user "<username1>" and "<password1>" click submit button
  	And Verify and Handle Set Preference Page 
   	And Verify invited user recieved title removed notification
  	And Enter the User Name and Password "<username>" and "<password>" click submit button
  	And Verify and Handle Set Preference Page 
    And update challenge end date	
  	And Login as Invited user "<username1>" and "<password1>" click submit button
  	And Verify and Handle Set Preference Page 
   	And Verify invited user recieved challenge end date updated notification
  	And Enter the User Name and Password "<username>" and "<password>" click submit button
  	And Verify and Handle Set Preference Page 
    And update challenge Name
    And Login as Invited user "<username1>" and "<password1>" click submit button
    And Verify and Handle Set Preference Page 
   	And Verify invited user recieved challenge Name updated notification	
  	And Enter the User Name and Password "<username>" and "<password>" click submit button
  	And Verify and Handle Set Preference Page 
    And Add New Participant to challenge
    And Login as Invited user "<username2>" and "<password2>" click submit button
    And Verify and Handle Set Preference Page 
   	And Verify New participant recieved challenge invite notification	
  	And Verify New Participant can able to Accept challenge from message center
  	And Enter the User Name and Password "<username>" and "<password>" click submit button
  	And Verify and Handle Set Preference Page	
  	And Remove friend from challenge
  	And Login as Invited user "<username2>" and "<password2>" click submit button
  	And Verify and Handle Set Preference Page 
   	And Verify Removed friend recieved Participant Removed notification	
  	
  	Examples: 
      | username | password  | username1|password1|username2|password2|
      | ph5      | ph5       | ph3      | ph3     |ph4	    |ph4      |
   
   
   @RC_Notification_Reject
    Scenario Outline: Verify user can able to view the Challenge Reject notification
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Validate Book Club landing page
  	And Create New challenge
  	And Login as Invited user "<username1>" and "<password1>" click submit button
 	And Verify and Handle Set Preference Page  
 	And Verify invited user recieved challenge invite
    And Reject challenge from message center
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Verify creator recieved challenge rejected notification
    
     Examples: 
      | username | password  | username1|password1|
      | ph5      | ph5       | ph3      | ph3     |