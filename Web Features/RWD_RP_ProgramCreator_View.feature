@Message_Center
Feature: As a User I want check notification messages

  @RWD_RP_ProgramCreator_View_Validation
  Scenario Outline: Verify user should be able check notification messages.
    Given Launch the Web Application
    When Enter the User Name and Password "<username>" and "<password>" click Submit button
    Then Navigate to Reading Program
    And Verify admin able to create a program successfully
   	Then Validate to the Program details screen​
    Then Navigate to edit Program and validate​
    Then Dupilcate program and validate
    Then unpublish program and validate
    Then validate program metrics for students
    
    Examples: 
      | username | password |
      | pha1      | pha1      |
