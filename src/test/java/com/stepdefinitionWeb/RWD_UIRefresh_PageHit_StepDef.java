package com.stepdefinitionWeb;

import java.awt.AWTException;
import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.By;

import com.base.CapabilitiesAndWebDriverUtils;
import com.mongodb.operation.CreateCollectionOperation;
import com.pom_RWD.Login_RWD;
import com.pom_RWD.RWD_UIRefresh_PageHit;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RWD_UIRefresh_PageHit_StepDef extends CapabilitiesAndWebDriverUtils {
	
	RWD_Login_DLX_StepDefs rwd_Login = new RWD_Login_DLX_StepDefs();
	RWD_UIRefresh_PageHit pageHit = new RWD_UIRefresh_PageHit();
	private static final Logger logger = LogManager.getLogger();


	@Given("Launch the Web Application")
	public void launch_the_Web_Application() throws IOException, InterruptedException {
		logger.info("Browser Launched successfully #Pass");
		
	}

	@When("Enter the User Name and Password {string} and {string} click Submit button")
	public void enter_the_User_Name_and_Password_and_click_Submit_button(String UserName, String Password) throws InvalidFormatException, IOException {
		System.out.println("Before login");
		Login_RWD.rwd_Login(UserName, Password);
	}

	@Then("Validate Profile Page")
	public void validate_Profile_Page() throws InvalidFormatException, IOException {
		pageHit.validateProfile();
	}

	@Then("Validate Home Page")
	public void validate_Home_Page() throws IOException {
	    pageHit.validateHomePage();
	}
	
	@Then("Validate Grid and List View")
	public void validate_Grid_and_List_View() throws IOException {
	 logger.info("Grid and List View Covered along with Home Page and its working fine #Pass");
 
	}
	
	@Then("Validate Sort and Filter")
	public void validate_Sort_and_Filter() throws IOException, InvalidFormatException {
	    pageHit.validateSortAndFilterValidation();
	}
	
	@Then("Validate See All listing page")
	public void validate_See_All_listing_page() {
	 logger.info("See All listing page is covered with Validate Home Page Method #Pass");
	}

	@Then("Validate Search screen")
	public void validate_Search_screen() throws InvalidFormatException, IOException {
		pageHit.validateSearchScreen();
	  
	}

	@Then("Validate Search Results page")
	public void validate_Search_Results_page() throws InvalidFormatException, IOException {
	   pageHit.validateSearchResultScreen();
		
	}
	
	@Then("Validate Title Preview screen")
	public void validate_Title_Preview_screen() throws InvalidFormatException, IOException {

	pageHit.validateTitlePreview();
	}

	@Then("Validate Title Details page")
	public void validate_Title_Details_page() throws InvalidFormatException, IOException, InterruptedException {
		pageHit.validateViewMoreDetails();

	}

	@Then("Validate My Stuff")
	public void validate_My_Stuff() throws InvalidFormatException, IOException {
		pageHit.validateMyStuff();
	}

	@Then("Validate Ebook reading screen")
	public void validate_Ebook_reading_screen() {
	  logger.info("This method is implemented along with search result and view more details screen #Pass");
	}

	@Then("Validate Audiobook play screen")
	public void validate_Audiobook_play_screen() throws Exception {
	   pageHit.validateAudioBook();
	}

	@Then("Validate Collection page")
	public void validate_Collection_page() throws IOException, InvalidFormatException {
	   pageHit.validateCollection();
	}

	@Then("Validate Collection listing page")
	public void validate_Collection_listing_page() throws Throwable {
	   pageHit.validateCollectionListPage();
	}

	@Then("Validate Title share page")
	public void validate_Title_share_page() {
	   logger.info("Title share page covered in Title preview method #Pass");
	}

	@Then("Validate Help")
	public void validate_Help() throws InvalidFormatException, IOException {
	   pageHit.validateHelp();
	}

	@Then("Validate Learning Links")
	public void validate_Learning_Links() {
	   logger.info("This Learning Links is verified in Home Page validation method #Pass");
	}
	
	@Then("Validate Checkout and Favorite functionality")
	public void validate_CheckoutAndFavorite_Functionality() throws InvalidFormatException, IOException {
		pageHit.ValidateCheckoutAndFavoriteFunctionality();
	}

	@Then("Validate Back office")
	public void validate_Back_office() throws InvalidFormatException, IOException {
	   pageHit.validateBackOffice();
	}
	
	@Then("Validate Create and Delete Private Collection")
	public void validate_Create_Private_Collection() throws InvalidFormatException, IOException {
	    pageHit.createCollection("Private");
	}

	@Then("Validate Create and Delete Public Collection")
	public void validate_Create_Public_Collection() throws InvalidFormatException, IOException {
	    pageHit.createCollection("Public");

	}

	@Then("Validate Public Collection Filters")
	public void validate_Public_Collection_Filters() throws InvalidFormatException, IOException {
	    pageHit.validateCollectionFilter("Public Collection");
	    
	}

	@Then("Validate Private Collection Filters")
	public void validate_Private_Collection_Filters() throws InvalidFormatException, IOException {
	    pageHit.validateCollectionFilter("Private Collection");
	    
	}

	@Then("Validate Admin FSS with Admin {string} and {string}")
	public void validate_Admin_FSS_with_Admin_and(String aUserName, String aPassword) throws InvalidFormatException, IOException {
		Login_RWD.rwd_Login(aUserName, aPassword);
	}

	@Then("Validate Admin Destiny Discover")
	public void validate_Admin_Destiny_Discover() throws InvalidFormatException, IOException {
		pageHit.validateAdminFSS();
	}

	@Then("Validate Logout")
	public void validate_Logout() throws InvalidFormatException, IOException {
	    pageHit.validateLogout();
	}
}
