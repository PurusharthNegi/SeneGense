package com.stepdefinitionWeb;

import java.io.IOException;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import com.pom_RWD.RWD_RP_Smoke;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RWD_RP_Smoke_StepDef {
	
	RWD_RP_Smoke rwd_rp_smoke= new RWD_RP_Smoke();
	
	@Then("Navigate to Reading Program and validate")
	public void navigate_to_Reading_Program_and_validate() throws InvalidFormatException, IOException {
		rwd_rp_smoke.bookClub();
	}
	
	@Then("Verify admin able to create & save the program successfully")
	public void verify_admin_able_to_create_save_the_program_successfully() throws InvalidFormatException, IOException {
		rwd_rp_smoke.createProgram();
	}

	@When("Verify admin publish the saved program successfully")
	public void verify_admin_publish_the_saved_program_successfully() {
		rwd_rp_smoke.publishProgram();
	}

	@When("Verify the created program in dashboard as Admin in Active section")
	public void verify_the_created_program_in_dashboard_as_Admin_in_Active_section() {
		rwd_rp_smoke.activePrograms();
	}

	@When("Clicking on the program card should show Program details in the My program tab")
	public void clicking_on_the_program_card_should_show_Program_details_in_the_My_program_tab() throws InvalidFormatException, IOException {
		rwd_rp_smoke.programDetailsValidationAdmin();
	}

	@When("Open Programs Landing screen with Upcoming Program for Student")
	public void open_Programs_Landing_screen_with_Upcoming_Program_for_Student() throws IOException {
		rwd_rp_smoke.upComingProgramValidation();
	}

	@When("Open Programs Landing screen with Ongoing Program for Student")
	public void open_Programs_Landing_screen_with_Ongoing_Program_for_Student() throws IOException {
		rwd_rp_smoke.onGoingProgramValidation();
	}

	@When("Clicking on the created program card should show Program details on open program")
	public void clicking_on_the_created_program_card_should_show_Program_details_on_open_program() {
		// Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("Students open a program and joins the program successfully")
	public void students_open_a_program_and_joins_the_program_successfully() throws InvalidFormatException, IOException {
		rwd_rp_smoke.joinProgram();
	}

	@When("Post student joined, the public program should show on my program tab")
	public void post_student_joined_the_public_program_should_show_on_my_program_tab() throws IOException {
		rwd_rp_smoke.afterJoin();
	}

	@When("Verify the message related to RP invite")
	public void verify_the_message_related_to_RP_invite() throws IOException {
		rwd_rp_smoke.messageCenterValidation();
		
	}

	@When("Verify user able to access menu in the dropdown")
	public void verify_user_able_to_access_menu_in_the_dropdown() throws InvalidFormatException, IOException {
	   rwd_rp_smoke.dropdownMsg();
	}

	@When("Verify the user able to delete Messages from the list")
	public void verify_the_user_able_to_delete_Messages_from_the_list() throws IOException {
	   rwd_rp_smoke.deleteMessages();
	}

	@When("Verify latest message appears on top of the message list")
	public void verify_latest_message_appears_on_top_of_the_message_list() {
	    rwd_rp_smoke.CheckappearMessage();
	}

	@When("Verify user able to navigate inside the message details screen")
	public void verify_user_able_to_navigate_inside_the_message_details_screen() throws InvalidFormatException, IOException {
		rwd_rp_smoke.messageDetails();
		
		
	}

	@When("To verify user able to Login and view User Landing page")
	public void to_verify_user_able_to_Login_and_view_User_Landing_page() throws InvalidFormatException, IOException {
		rwd_rp_smoke.userLandingPage();
		
	}

	@When("To verify user able to access all global navigation menu")
	public void to_verify_user_able_to_access_all_global_navigation_menu() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("To verify user able to click on Notifications icon and view the list of notifications")
	public void to_verify_user_able_to_click_on_Notifications_icon_and_view_the_list_of_notifications() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("To verify user clicks on RP then user able to view the ‘View Details’ CTA, tapping on which loads the corresponding RP details screen")
	public void to_verify_user_clicks_on_RP_then_user_able_to_view_the_View_Details_CTA_tapping_on_which_loads_the_corresponding_RP_details_screen() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("To Verify that User should be able to view the RC carousel, comprising on the carousel type, carousel title, list of most recently accessed RC")
	public void to_Verify_that_User_should_be_able_to_view_the_RC_carousel_comprising_on_the_carousel_type_carousel_title_list_of_most_recently_accessed_RC() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("To Verify that User should be able to view the RP carousel, comprising on the carousel type, carousel title, list of most recently accessed RP")
	public void to_Verify_that_User_should_be_able_to_view_the_RP_carousel_comprising_on_the_carousel_type_carousel_title_list_of_most_recently_accessed_RP() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("See All CTA on the RC\\/RP carousel and be navigated to the Book Club landing page")
	public void see_All_CTA_on_the_RC_RP_carousel_and_be_navigated_to_the_Book_Club_landing_page() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("User should not be able to view the hero section comprising of the featured Reading Program below the global menu if Admin has not configured the hero RP on Admin console")
	public void user_should_not_be_able_to_view_the_hero_section_comprising_of_the_featured_Reading_Program_below_the_global_menu_if_Admin_has_not_configured_the_hero_RP_on_Admin_console() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("View only active challenges and programs that they are participating in the carousel")
	public void view_only_active_challenges_and_programs_that_they_are_participating_in_the_carousel() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("To verify user able to view the progress based on last page visited by the user for eBook")
	public void to_verify_user_able_to_view_the_progress_based_on_last_page_visited_by_the_user_for_eBook() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("To verify user able to view the progress based on last page visited by the user for Audiobook")
	public void to_verify_user_able_to_view_the_progress_based_on_last_page_visited_by_the_user_for_Audiobook() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}

	@When("To verify user able to view the {int}% progress once print book is retured")
	public void to_verify_user_able_to_view_the_progress_once_print_book_is_retured(Integer int1) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new cucumber.api.PendingException();
	}


}
