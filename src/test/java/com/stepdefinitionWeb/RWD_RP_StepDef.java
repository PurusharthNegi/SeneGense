package com.stepdefinitionWeb;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import com.base.CapabilitiesAndWebDriverUtils;
import com.pom_RWD.RWD_RP;
import com.pom_RWD.RWD_UIRefresh_PageHit;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RWD_RP_StepDef extends CapabilitiesAndWebDriverUtils  {
	private static final Logger logger = LogManager.getLogger();
	RWD_RP rp = new RWD_RP();
	RWD_UIRefresh_PageHit uirefresh =new RWD_UIRefresh_PageHit();

	@Then("Validate Discard function")
	public void validate_Discard_function() throws InvalidFormatException, IOException {
	   // rp.discard();
	}
	
	@Then("Validate Program Name and Description field")
	public void validate_Program_Name_and_Description_field() throws InvalidFormatException, IOException {
	   rp.enterprogNameDesc();
	}

	@Then("Validate and set program access")
	public void validate_and_set_program_access() throws Exception {
		rp.setprogAccess(true); //true = public
	}

	@Then("Validate tool tip for program access")
	public void validate_tool_tip_for_program_access() throws IOException {
	   rp.tooltip();
	}

	@Then("Validate and set program type")
	public void validate_and_set_program_type() throws InvalidFormatException, IOException {
		rp.setProgType(false);
	}

	@Then("Validate and Set program Start date")
	public void validate_and_Set_program_Start_date() throws InvalidFormatException, IOException {
	  rp.startDate(false);
	}

	@Then("Validate and Set program End date")
	public void validate_and_Set_program_End_date() throws InvalidFormatException, IOException {
	    rp.endDate();
	}

	@Then("Validate and Set Remainder")
	public void validate_and_Set_Remainder() throws InvalidFormatException, IOException {
	   rp.setRemainder();
	}

	@Then("Validate and Assign students to the program")
	public void validate_and_Assign_students_to_the_program() throws Exception {
	    rp.assignStudent();
	}

	@Then("Validate and Add title to the program")
	public void validate_and_Add_title_to_the_program() throws Exception {
	    rp.addTitle();
	}

	@Then("Verify Save program function")
	public void verify_Save_program_function() throws InvalidFormatException, IOException {
	    rp.saveProgram();
	}
	//Publish program function
	@Then("Search and open the saved program in my program listing screen")
	public void search_and_open_the_saved_program_in_my_program_listing_screen() {
	    rp.programSearch();
	}
	
	@Then("Edit program type and validate number of required books field")
	public void edit_program_type_and_validate_number_of_required_books_field() throws InvalidFormatException, IOException {
	    rp.setProgType(true);
	}
	
	@Then("Edit and validate the Visibility of program")
	public void edit_and_validate_the_Visibility_of_program() throws Exception {
		rp.setprogAccess(false); //false = private
	}

	@Then("Edit and validate the Start date of the program")
	public void edit_and_validate_the_Start_date_of_the_program() throws InvalidFormatException, IOException {
		rp.startDate(true);
	}
	
	@Then("Delete the saved program and validate")
	public void delete_the_saved_program_and_validate() {
		WaitForWebElement(rp.lbl_ActiveProgram);
		rp.deleteProg();
	}

	@Then("Validate Publish program function")
	public void validate_Publish_program_function() {
	    rp.publishProgram();
	}
	
	@Then("Validate the leave program function")
	public void validate_the_leave_program_function() {
	   rp.leaveProg();
	}
	@When("Log out and login as participant")
	public void log_out_and_login_as_participant() throws InvalidFormatException, IOException {
		uirefresh.validateLogout();
	}

	@When("Click the program card and navigated to the details screen")
	public void click_the_program_card_and_navigated_to_the_details_screen() throws InvalidFormatException, IOException {
		rp.programSearch();
		rp.navigateToActiveProgramDetails();
	}

	@When("Verify the avatar name created date start date end date")
	public void verify_the_avathar_name_created_date_start_date_end_date() throws InvalidFormatException, IOException {
		rp.creatorStartEndDateValidation();  
	}

	@When("Verify the status visibility and program type reminder")
	public void verify_the_status_visibility_and_program_type_reminder() throws InvalidFormatException, IOException {
		rp.statusVisibilityType();
	}

	@When("Verify the list of books added to the reading Program in carousel")
	public void verify_the_list_of_books_added_to_the_reading_Program_in_carousel() throws IOException {
		rp.titlesListValidation();;
	    
	}

	@When("Verify ten students listed at a time with pagination icon")
	public void verify_ten_students_listed_at_a_time_with_pagination_icon() throws IOException {
		rp.participantListValidation();
	}
	
	@Given("Verify the status visibility and program type reminder of x of y reading program")
	public void verify_the_status_visibility_and_program_type_reminder_of_x_of_y_reading_program() throws InvalidFormatException, IOException {
		rp.statusVisibilityTypeXOfYProgram();
	}
	@Given("Click Closed program card verify the details page")
	public void click_Closed_program_card_verify_the_details_page() throws InvalidFormatException, IOException {
		rp.closedprogramDetailsPage();
	}

	@Given("Verify the avatar name created date start date end date for closed program")
	public void verify_the_avatar_name_created_date_start_date_end_date_for_closed_program() {
		rp.closedProgramStartEndDateValidation();
	}

	@Given("Verify the status visibility and program type reminder for closed program")
	public void verify_the_status_visibility_and_program_type_reminder_for_closed_program() {
		rp.closedProgramStatusVisibility();
	}

	@Given("Verify the list of books added to the reading Program in carousel for closed program")
	public void verify_the_list_of_books_added_to_the_reading_Program_in_carousel_for_closed_program() throws IOException {
		rp.titlesListValidation();
	}

	@Given("Verify ten students listed at a time with pagination icon for closed program")
	public void verify_ten_students_listed_at_a_time_with_pagination_icon_for_closed_program() throws IOException {
		rp.participantListValidation();
	}
	
	@Given("Click the more button and click leave program")
	public void click_the_more_button_and_click_leave_program() {
		rp.leaveProgram();
	}
	
	@Then("Navigate to Reading Program")
	public void Navigate_to_Reading_Program() throws InvalidFormatException, IOException {
		rp.readingProgramValidation();
		 
	}
	@Then("Validate to the Program details screen​")
	public void Validate_to_the_Program_details_screen​​() throws InvalidFormatException, IOException {
		rp.programDetailsValidationAdmin();
		 
	}
	@Then("Navigate to edit Program and validate​")
	public void Navigate_to_edit_Program​​() throws InvalidFormatException, IOException {
		rp.nagivateEditProgram();
		 
	}
	@Then("Dupilcate program and validate")
	public void Dupilcate_program_and_validate​​() throws InvalidFormatException, IOException {
		rp.duplicateProgram();
		
	}
	@Then("unpublish program and validate")
	public void unpublish_program_and_validate() throws InvalidFormatException, IOException
	{
		rp.unpublishProgram(false);	
	}
	@Then("validate program metrics for students")
	public void validate_program_metrics_for_students() throws IOException
	{
		rp.checkstudentmetrics();
	}
	@Then("Validate challenges my program and open program tabs")
	public void Validate_challenges_my_rogram_and_open_program_tabs() throws IOException
	{
		rp.validatetabs();
	}
	@Then("Validate reading program")
	public void Validate_reading_program() throws IOException, InvalidFormatException
	{
		rp.validateReadingPrograms();
	}
	@When("Open the Programs Landing screen with Ongoing Program for Student")
	public void open_Programs_Landing_screen_with_Ongoing_Program_for_Student() throws IOException {
		
		rp.onGoingProgramValidation();
	}

	@When("validate joins the program successfully")
	public void students_open_a_program_and_joins_the_program_successfully() throws InvalidFormatException, IOException {
		
		rp.joinProgram();
	}
	@When("validate after Join the Program")
	public void post_student_joined_the_public_program_should_show_on_my_program_tab() throws IOException {
		
		rp.afterJoin();
	}
}
