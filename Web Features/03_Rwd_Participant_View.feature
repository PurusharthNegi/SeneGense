@Rwd_ReadingChallenge
Feature: Participant view functional validation

@Rwd_ParticipantView_Sc3
Scenario Outline: Login as invited user and Validate
Given Launch the Web Application
And Login as invited user "<iUserName>" and "<iPassword>" 
Then Validate Accept challenge function
And Valiate participant view


 Examples: 
      | iUserName | iPassword |
      | pha1      | pha1      |
    