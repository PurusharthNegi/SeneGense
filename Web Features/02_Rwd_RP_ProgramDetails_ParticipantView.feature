
@ReadingProgram_ParticipantView
Feature: RP Validating My Program Details Participant View

  @RP_ParticipantView_BooksinOrderProgram
  Scenario Outline: ​User is enrolled in an Books in order reading program​
    Given Launch the Web Application
    And Enter the User Name and Password "<iUserName>" and "<iPassword>" click Submit button
    And Navigate to Reading Program and validate
    And Click the program card and navigated to the details screen
    And Verify the avatar name created date start date end date
    And Verify the status visibility and program type reminder
    And Verify the list of books added to the reading Program in carousel
    And Verify ten students listed at a time with pagination icon

    Examples:
      | username | password | iUserName | iPassword |
      | pha1     | pha1     | pha1      | pha1      |

  @RP_ParticipantView_BooksinOrderProgram_LeaveProgram
  Scenario Outline: ​User is enrolled in an Books in order reading program​ and verify the leave program
    Given Launch the Web Application
    And Enter the User Name and Password "<iUserName>" and "<iPassword>" click Submit button
    And Navigate to Reading Program and validate
    And Click the program card and navigated to the details screen
    And Click the more button and click leave program

    Examples:
      | username | password | iUserName | iPassword |
      | pha1     | pha1     | pha1      | pha1      |

  @RP_ParticipantView_XofYProgram
  Scenario Outline: ​User is enrolled in X out of Y reading program​
    Given Launch the Web Application
    And Enter the User Name and Password "<iUserName>" and "<iPassword>" click Submit button
    And Navigate to Reading Program and validate
    And Click the program card and navigated to the details screen
    And Verify the avatar name created date start date end date
    And Verify the status visibility and program type reminder of x of y reading program
    And Verify the list of books added to the reading Program in carousel
    And Verify ten students listed at a time with pagination icon

    Examples:
      | username | password | iUserName | iPassword |
      | pha1     | pha1     | pha1      | pha1      |


    @RP_ParticipantView_XofYProgram_LeaveProgram
  Scenario Outline: ​User is enrolled in an Books in order reading program​ and verify the leave program
    Given Launch the Web Application
    And Enter the User Name and Password "<iUserName>" and "<iPassword>" click Submit button
    And Navigate to Reading Program and validate
    And Click the program card and navigated to the details screen
    And Click the more button and click leave program

    Examples:
      | username | password | iUserName | iPassword |
      | pha1     | pha1     | ph5     | ph5    |
      
  @RP_ParticipantView_ClosedProgram
  Scenario Outline: ​Verify Closed Program Detail page
    Given Launch the Web Application
    And Enter the User Name and Password "<iUserName>" and "<iPassword>" click Submit button
    And Navigate to Reading Program and validate
    And Click Closed program card verify the details page
    And Verify the avatar name created date start date end date for closed program
    And Verify the status visibility and program type reminder for closed program
    And Verify the list of books added to the reading Program in carousel for closed program
    And Verify ten students listed at a time with pagination icon for closed program

    Examples:
      | username | password | iUserName | iPassword |
      | pha1     | pha1     | pha1      | pha1      |
