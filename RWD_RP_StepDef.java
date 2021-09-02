package com.stepdefinitionWeb;

import java.io.IOException;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import com.pom_RWD.RWD_RP;
import com.pom_RWD.Rwd_RC;

import cucumber.api.java.en.Then;

public class RWD_RP_StepDef {

	RWD_RP rwd_rp= new RWD_RP();
	Rwd_RC rwd_rc=new Rwd_RC();
	
	@Then("Verify admin able to create a program successfully")
	public void verify_admin_able_to_create_save_the_program_successfully() throws Exception {
		rwd_rp.createProgram();
	}

	
	@Then("Validate Discard function")
	public void validate_Discard_function() throws InvalidFormatException, IOException {
	 //   rwd_rp.discard();
	}
	
	@Then("Validate Program Name and Description field")
	public void validate_Program_Name_and_Description_field() throws InvalidFormatException, IOException {
	   rwd_rp.enterprogNameDesc();
	}

	@Then("Validate and set program access")
	public void validate_and_set_program_access() throws InvalidFormatException, IOException {
		rwd_rp.setprogAccess();
	}

	@Then("Validate tool tip for program access")
	public void validate_tool_tip_for_program_access() throws IOException {
	 //  rwd_rp.tooltip();
	}

	@Then("Validate and set program type")
	public void validate_and_set_program_type() throws InvalidFormatException, IOException {
	//	rwd_rp.setProgType(false);
	}

	@Then("Validate and Set program Start date")
	public void validate_and_Set_program_Start_date() throws InvalidFormatException, IOException {
	//  rwd_rp.startDate();
	}

	@Then("Validate and Set program End date")
	public void validate_and_Set_program_End_date() throws InvalidFormatException, IOException {
	  //  rwd_rp.endDate();
	}

	@Then("Validate and Set Remainder")
	public void validate_and_Set_Remainder() throws InvalidFormatException, IOException {
	   rwd_rp.setRemainder();
	}

	@Then("Validate and Assign students to the program")
	public void validate_and_Assign_students_to_the_program() throws Exception {
	    rwd_rp.assignStudent();
	}

	@Then("Validate and Add title to the program")
	public void validate_and_Add_title_to_the_program() throws InvalidFormatException, IOException {
	    rwd_rp.addTitle();
	}

	@Then("Verify Save program function")
	public void verify_Save_program_function() throws InvalidFormatException, IOException {
	    rwd_rp.saveProgram();
	}
	//Publish program function
	@Then("Search and open the saved program in my program listing screen")
	public void search_and_open_the_saved_program_in_my_program_listing_screen() {
	    rwd_rp.programSearch();
	}
	
	@Then("Change program type and validate number of required books field")
	public void change_program_type_and_validate_number_of_required_books_field() throws InvalidFormatException, IOException {
	    rwd_rp.setProgType(true);
	}

	@Then("Validate Publish program function")
	public void validate_Publish_program_function() {
	    rwd_rp.publishProgram();
	}
	
	@Then("Navigate to Reading Program")
	public void Navigate_to_Reading_Program() throws InvalidFormatException, IOException {
		rwd_rp.readingProgramValidation();
		 
	}
	@Then("Validate to the Program details screen​")
	public void Validate_to_the_Program_details_screen​​() throws InvalidFormatException, IOException {
		rwd_rp.programDetailsValidationAdmin();
		 
	}
	@Then("Navigate to edit Program and validate​")
	public void Navigate_to_edit_Program​​() throws InvalidFormatException, IOException {
		rwd_rp.nagivateEditProgram();
		 
	}
	@Then("Dupilcate program and validate")
	public void Dupilcate_program_and_validate​​() throws InvalidFormatException, IOException {
		rwd_rp.duplicateProgram();
		
	}
	@Then("unpublish program and validate")
	public void unpublish_program_and_validate() throws InvalidFormatException, IOException
	{
	rwd_rp.unpublishProgram(false);	
	}
	@Then("validate program metrics for students")
	public void validate_program_metrics_for_students() throws IOException
	{
		rwd_rp.checkstudentmetrics();
	}
	
}
