package com.stepdefinitionWeb;

import com.base.CapabilitiesAndWebDriverUtils;
import com.pom_RWD.RWD_CreateAChallengeBasicChallengeDetails;
import com.pom_RWD.RWD_CreateaChallengeSearchTitleResultsListView;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class RWD_SearchTitles_RC_StepDef extends CapabilitiesAndWebDriverUtils {
	WebDriver driver;
	
	RWD_CreateAChallengeBasicChallengeDetails createBasicchallenge = new RWD_CreateAChallengeBasicChallengeDetails();
	RWD_CreateaChallengeSearchTitleResultsListView searchTitlesresults = new RWD_CreateaChallengeSearchTitleResultsListView();

	@Then("User should be navigated to Find titles page upon clicking Add titles")
	public void user_navigated_to_find_titles_page_on_add_titles_clicked() throws Exception {
		waitFor(2000);
		javascriptScroll(createBasicchallenge.getRWDsetReminder());
		if(IsDisplayedWebElement(searchTitlesresults.getRWD_AddTitleCTA())){
			System.out.println("Add title CTA button is displayed");

			ClickOnWebElement(searchTitlesresults.getRWD_AddTitleCTA());
			System.out.println("Clicked on Add title CTA button");

			if(IsDisplayedWebElement(searchTitlesresults.getRWD_recentSearchSuggestiontitle())) {
				List<WebElement> recentSuggestionList = searchTitlesresults.getRWD_recentSuggestionlists();
				if(recentSuggestionList.size()==5)
				{System.out.println("Recent suggestion lists has 5 suggestion by default");
					Assert.assertTrue("Recent suggestion lists has 5 suggestion by default", true);
				}else
				{System.out.println("Recent suggestion lists has 5 suggestion by default");
					Assert.assertFalse("Recent suggestion lists has not 5 suggestions by default", true);
				}
				System.out.println("Find title screen is loaded");
				Assert.assertTrue("Find title screen is loaded", true);
			}else
				Assert.assertFalse("Find title screen is not loaded",true);

		}else{
			Assert.assertFalse("Add title CTA button is not displayed",true);
		}

	}


	@When("User {string} search keyword {string} with more than three characters")
	public  void user_search_with_keywords_and_action(String action, String searchKeyword){
		waitFor(3000);
		if (action.equalsIgnoreCase("add"))
		{System.out.println("Adding search keywords");
			searchTitlesresults.getRWD_SearchTitleBox().clear();
			searchTitlesresults.getRWD_SearchTitleBox().sendKeys(searchKeyword);
			System.out.println("Entered search keywords"+searchKeyword );

		}
		else if (action.equalsIgnoreCase("edit"))
		{System.out.println("Editing search keywords"+searchKeyword );
				searchTitlesresults.getRWD_SearchTitleBox().sendKeys("N");
				System.out.println("Entered static keyword in search text field as 'N'");
				waitFor(1000);
				searchTitlesresults.getRWD_SearchTitleBox().clear();
				waitFor(1000);
				System.out.println("Editing search keywords with "+searchKeyword );
				searchTitlesresults.getRWD_SearchTitleBox().sendKeys(searchKeyword);
				System.out.println("Edited the keyword in search text field 'N' with "+ searchKeyword);

		}
		else
		{
			System.out.println("Provided parameter is not matched with any of add or edit action"+action);
			Assert.assertFalse("Provided parameter is not matched with any of add or edit action",true);
		}


	}



	@Then("User should be able view the search suggestions")
	public  void user_should_see_search_suggestion_list(){
		waitFor(2000);
		if(IsDisplayedWebElement(searchTitlesresults.getRWD_SearchTitleBox())){
			System.out.println("Search Text field is shown");

			if(IsDisplayedWebElement(searchTitlesresults.getRWD_SearchSuggestion())) {
				System.out.println("Search suggestion are shown");
				List<WebElement> suggestedlist = searchTitlesresults.getRWD_searchSuggestionList();
				System.out.println("Getting list search suggestion and count is "+suggestedlist.size());
				if(suggestedlist.size()>0){
					for (int i =0;i<suggestedlist.size();i++){
						System.out.println(suggestedlist.get(i).getText());
					}
				Assert.assertTrue("Getting list search suggestion ", true);}
				else {
					System.out.println("list search suggestion is not shown "+suggestedlist.size());
				}

			}else
				Assert.assertFalse("Find title screen is not loaded",true);

		}else{
			Assert.assertFalse("Search Text field is not shown",true);
		}



	}


	@Then("User should able view corresponding details page upon selecting first suggested link")
	public  void user_selects_first_suggestion_from_search_result_and_views_detailspage() {
		waitFor(2000);
		if(IsDisplayedWebElement(searchTitlesresults.getRWD_SearchSuggestion()))
		{
			System.out.println("Search suggestion are shown");
			List<WebElement> suggestedlist = searchTitlesresults.getRWD_searchSuggestionList();
			System.out.println("Getting list search suggestion and count is "+suggestedlist.size());
			if(suggestedlist.size()>0){
				for (int i =0;i<suggestedlist.size();i++) {
					System.out.println(suggestedlist.get(i).getText());
					if (suggestedlist.get(0).isDisplayed()) {
						System.out.println("First search suggestion list is present");
						ClickOnWebElement(suggestedlist.get(0));
						System.out.println("Clicked on First search suggestion list");
						boolean flag = IsDisplayedWebElement(searchTitlesresults.getRWDsearchSuggestionlistingscreenTitle());
						waitFor(1000);
						List<WebElement> serachSuggestionListingBooks = searchTitlesresults.getRWDsearchSuggestionlistingBooks();
						Assert.assertTrue("Clicked on First search suggestion list and navigated to listing screen ",flag );
						if(serachSuggestionListingBooks.size()>0) {
							Assert.assertTrue("Clicked on First search suggestion list and navigated to listing screen", true);
							break;
								}else
							{ Assert.assertFalse("No books list shown on search suggestion book screen", true);}
						}
						else {
						Assert.assertFalse("First search suggestion list is not present", true);
							}
						}
					}

				}
				else {
					System.out.println("search suggestion is not shown ");
					Assert.assertFalse("search suggestion is not shown", true);
					}
				}




	@Then("User should view no tiles found message if the search {string} is not matching")
	public  void User_should_see_error_message_for_no_search_results(String keyword)
	{
		searchTitlesresults.getRWD_SearchTitleBox().clear();
		searchTitlesresults.getRWD_SearchTitleBox().sendKeys(keyword);
		System.out.println("Entered search keywords"+keyword );

		if(IsDisplayedWebElement(searchTitlesresults.getRWD_SearchSuggestion())) {
			System.out.println("Search suggestion are shown");
			if(IsDisplayedWebElement(searchTitlesresults.getnoSearchSuggestionMessage()))
			{
				System.out.println("No Search suggestion message is shown");
				Assert.assertTrue("No Search suggestion message is shown",true);
			}
			else
			{
				System.out.println("No Search suggestion message is not shown");
				Assert.assertFalse("No Search suggestion message is not shown",true);
			}

		}
		else
		{
			System.out.println("Search suggestion section and title not shown");
			Assert.assertFalse("No Search suggestion message is not shown",true);
		}
	}


	@Then("User should be navigated back to Create challenge screen upon clicking close icon")
	public  void User_should_navigated_to_created_challenge_screen_upon_closing_search_overlay()
	{System.out.println("Going to check close icon on search overlay screen");
		if(searchTitlesresults.getRWD_searchsuggestionscreen_closeicon().isDisplayed())
		{	System.out.println("close icon is present in search overlay screen");
			ClickOnWebElement(searchTitlesresults.getRWD_searchsuggestionscreen_closeicon());
			if(IsDisplayedWebElement(searchTitlesresults.getRWD_AddTitleCTA()))
				Assert.assertTrue("User should be navigated back to Create challenge screen upon clicking close icon",true);
			else
				Assert.assertFalse("User not navigated back to Create challenge screen upon clicking close icon",true);

			}else
			{System.out.println("close icon is not present in search overlay screen");
			Assert.assertFalse("close icon is not present in search overlay screen",true);
			}
	}



	@When("User click on {string} by providing search keyword {string}")
	public void user_clickon_searchicon_or_enter_with_keyword(String action, String searchKeyword){
		System.out.println("Adding search keywords");
		searchTitlesresults.getRWD_SearchTitleBox().clear();
		searchTitlesresults.getRWD_SearchTitleBox().sendKeys(searchKeyword);
		System.out.println("Entered search keywords"+searchKeyword );
		waitFor(1000);

		if(action.equalsIgnoreCase("search"))
		{
			ClickOnWebElement(searchTitlesresults.getRWD_SearchTitleBox());
			System.out.println("Clicked the search icon post entered "+searchKeyword );
		}else if(action.equalsIgnoreCase("enter"))
		{
			searchTitlesresults.getRWD_SearchTitleBox().sendKeys(Keys.ENTER);
			System.out.println("Clicked the search icon post entered "+searchKeyword );

		}else {
			System.out.println("Provided action "+action+" is not matched");
			Assert.assertFalse(true);
		}


	}


	@Then("User should able to view the search overlay screen with suggestions")
	public  void user_should_able_to_view_search_overlay_screen_suggestions(){
		waitFor(2000);
		if(IsDisplayedWebElement(searchTitlesresults.getRWD_searchSuggestionoverlay_filtericon()) && IsDisplayedWebElement(searchTitlesresults.getRWDsearchSuggestionlistingscreenTitle()))
			System.out.println("Search suggestion overlay screen is loaded");
		Assert.assertTrue("Search suggestion overlay screen is loaded",true);
		List<WebElement> serachSuggestionListingBooks = searchTitlesresults.getRWDsearchSuggestionlistingBooks();

		if(serachSuggestionListingBooks.size()>0) {
			Assert.assertTrue("Search suggestion listing is shown and not greater than zero", true);
		}else
		{ Assert.assertFalse("No books list shown on search suggestion book screen", true);}

	}




}



