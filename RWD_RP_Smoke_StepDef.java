package com.stepdefinitionWeb;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import com.pom_RWD.RWD_RP_Smoke;
import com.pom_RWD.RWD_UIRefresh_PageHit;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RWD_RP_Smoke_StepDef {
	RWD_RP_Smoke rp = new RWD_RP_Smoke();
	RWD_UIRefresh_PageHit pageHit = new RWD_UIRefresh_PageHit();
	private static final Logger logger2 = LogManager.getLogger();
	
	@Then("Navigate to Reading Program and validate")
	public void navigate_to_Reading_Program_and_validate() throws InvalidFormatException, IOException {
		logger2.info("--BookClub validations--");
	    rp.bookClub();
	    logger2.info("Log into the app and navigate to Book club tab /reading Program #Pass");
	}
	
	@Then("Verify admin able to create & save the program successfully")
	public void verify_admin_able_to_create_save_the_program_successfully() throws InvalidFormatException, IOException {
		logger2.info("Reading program validations");
		logger2.info("Verify that admin should able to create Private program");
	   rp.createProgram();
	}

	@When("Verify admin publish the saved program successfully")
	public void verify_admin_publish_the_saved_program_successfully() {
		rp.publishProgram();
		logger2.info("Verify that admin should able to create public program #Pass");
	}

	@When("Verify the created program in dashboard as Admin in Active section")
	public void verify_the_created_program_in_dashboard_as_Admin_in_Active_section() {
		rp.activePrograms();
		logger2.info("My Programs Landing screen with Active/Draft/Closed Programs #Pass");
	}

	@When("Clicking on the program card should show Program details in the My program tab")
	public void clicking_on_the_program_card_should_show_Program_details_in_the_My_program_tab() throws InvalidFormatException, IOException {
	    rp.programDetailsValidationAdmin();
	    logger2.info("Validate the created program in creator(Admin) view #Pass");
	}

	@When("Open Programs Landing screen with Upcoming Program for Student")
	public void open_Programs_Landing_screen_with_Upcoming_Program_for_Student() throws IOException {
	    rp.upComingProgramValidation();
	    logger2.info("Validate UpComing programs in open programs screen");
	}

	@When("Open Programs Landing screen with Ongoing Program for Student")
	public void open_Programs_Landing_screen_with_Ongoing_Program_for_Student() throws IOException {
		
	    rp.onGoingProgramValidation();
	    logger2.info("Validate OnGoing programs in open programs screen");
	}

	@When("Clicking on the created program card should show Program details on open program")
	public void clicking_on_the_created_program_card_should_show_Program_details_on_open_program() {
	   
	}

	@When("Students open a program and joins the program successfully")
	public void students_open_a_program_and_joins_the_program_successfully() throws InvalidFormatException, IOException {
		
	    rp.joinProgram();
	    logger2.info("Validate that participant should able to join the program");
	}

	@When("Post student joined, the public program should show on my program tab")
	public void post_student_joined_the_public_program_should_show_on_my_program_tab() throws IOException {
		
	   rp.afterJoin();
	   logger2.info("Validate the joined program in participant(Student) view");
	}

	@When("Verify the message related to RP invite")
	public void verify_the_message_related_to_RP_invite() throws IOException {
		logger2.info("--Message Centre validations--");
		
	   rp.messageCenterValidation();
	   logger2.info("Validate the message related to Reading Program");
	}

	@When("Verify user able to access menu in the dropdown")
	public void verify_user_able_to_access_menu_in_the_dropdown() throws InvalidFormatException, IOException {
	    rp.dropdownMsg();
	    logger2.info("Validate user able to access the sub menu in drop down");
	}

	@When("Verify the user able to delete Messages from the list")
	public void verify_the_user_able_to_delete_Messages_from_the_list() throws IOException {
	    rp.deleteMessages();
	    logger2.info("Verify the user able to delete Messages from the list");
	}

	@When("Verify latest message appears on top of the message list")
	public void verify_latest_message_appears_on_top_of_the_message_list() {
	    rp.CheckappearMessage();
	    logger2.info("Verify latest message appears on top of the message list");
	}

	@When("Verify user able to navigate inside the message details screen")
	public void verify_user_able_to_navigate_inside_the_message_details_screen() throws InvalidFormatException, IOException {
	    rp.messageDetails();
	    logger2.info("Verify user able to navigate inside the message details screen");
	}
	
	@Then("Verify user able to Logout from Application")
	public void verify_user_able_to_Logout_from_Application() throws InvalidFormatException, IOException {
		pageHit.validateLogout();
		logger2.info("Verify user able to successfully Logout from the application");
	}
}
