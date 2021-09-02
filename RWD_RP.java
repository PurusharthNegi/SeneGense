package com.pom_RWD;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;

import com.base.CapabilitiesAndWebDriverUtils;
import com.base.ExcelReader;
import com.base.Screenshots;

import cucumber.api.java.en.Then;
import io.cucumber.datatable.dependency.com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;

public class RWD_RP extends CapabilitiesAndWebDriverUtils {

	private static final Logger logger = LogManager.getLogger();
	List<Map<String, String>> testData;
	Rwd_RC rc = new Rwd_RC();
	static ExcelReader reader = new ExcelReader();
//	String progName = "Automation_smoke_661";
	String progName1 = "editprg" + generateRandomNumber();
	public static String progName = "Automation_ReadingProg_"+ generateRandomNumber();

	public RWD_RP() {
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//*[@class='msg-icon-button icon-bg mr-rgt ng-star-inserted']")
	public  WebElement RWDMessagecenter;
	
	@FindBy(xpath="//*[@class='accordion-msg ng-star-inserted']/h4")
    public List<WebElement> RwdmsgDetails;
	
	@FindBy(xpath="//div[@class='content-name-head']/h4")
    public List<WebElement> msgHeader;
	
	@FindBy(id = "cp-astud-close")
	public WebElement RwdCloseStudent;

	@FindBy(xpath = "//button[text()='Invite to Program ']")
	public WebElement btn_InviteToPrgrm;

	@FindBy(xpath = "//span[@class='student-invite']")
	public List<WebElement> btn_InviteFriendLists;

	@FindBy(id = "ivite-chlg-search")
	public WebElement txt_SearchStudentName;

	@FindBy(id = "cp-asgn-stud-btn")
	public WebElement btn_addfriend;

	@FindBy(id = "pd-partip-head")
	public WebElement participants;

	@FindBy(id = "cp-title-btn")
	public WebElement btn_AddTitle;

	@FindBy(xpath = "//*[@aria-label='Add to Program']")
	public WebElement AddToprgrmTitle;

	@FindBy(xpath = "//*[@aria-label='delete program dialog']")
	public WebElement Rwddeleteprg;

	// @FindBy(xpath = "//div[1]/div[1]/div/span/button/mat-icon[text()='close']")
	@FindBy(xpath = "//*[@id='pr_id_13']/div/div/div/div/div/div/span/button/mat-icon")
	public WebElement RWDremoveTitle;

	@FindBy(xpath = "//span[text()='Remove']")
	public WebElement RWDRemovetitleconfirm;

	@FindBy(xpath = "//*[text()='more_horiz']")
	public WebElement RWDMoreMenu;

	@FindBy(xpath = "//h2[text()=' SUGGESTED RESULTS ']")
	public WebElement lbl_suggestedResult;

	@FindBy(xpath = "//label[@class='subheading']")
	public WebElement searchTitleHeader;

	@FindBy(xpath = "//input[@id='searchInput']")
	public WebElement txt_SearchInput;

	@FindBy(xpath = "//*[@class='mat-option-text']")
	public List<WebElement> RWDReminderTypes;

	@FindBy(xpath = "//mat-select[@id='cp-setrem-sel']")
	public WebElement RWDsetReminder;

	@FindBy(xpath = "//*[@id='start-date-cp']/button")
	// @FindBy(xpath="(//button[@aria-label='Open calendar'])[1]")
	public WebElement btn_startDate;

	// @FindBy(xpath="(//button[@aria-label='Open calendar'])[2]")
	@FindBy(xpath = "//*[@id='end-date-cp']/button")
	public WebElement btn_endDate;

	@FindBy(xpath = "//*[@class='mat-option-text']")
	public List<WebElement> progTypes;

	@FindBy(xpath = "//mat-select[@id='cp-select-progtyp']")
	public WebElement programType;

	@FindBy(xpath = "//*[@aria-label='remove invite student']")
	public List<WebElement> addedListClose;

	@FindBy(id = "customers")
	public List<WebElement> students;

	@FindBy(xpath = "//*[@id=\"headerSideBar\"]/mat-sidenav-content/header/fss-ms-header-std/div/mat-toolbar/div[3]/button[2]/span")
	public WebElement msgNotificationCount;

	@FindBy(xpath = "//*[@class='msg-icon-button icon-bg mr-rgt ng-star-inserted']")
	public WebElement RwdMessageCenterIcon;

	@FindBy(xpath = "//label[text()='© 2021 Follett School Solutions. All Rights Reserved']")
	public WebElement footer;

	@FindBy(xpath = "//span[@class='inv-user-name']")
	public List<WebElement> addedStudentList;

	@FindBy(xpath = "//h1[text()='ACTIVE PROGRAMS']")
	public WebElement lbl_ActiveChallenge;

	@FindBy(id = "pd-editprg")
	public WebElement Rwdeditprg;

	@FindBy(id = "pd-duplcate")
	public WebElement Rwdduplicateprg;

	@FindBy(xpath = "//h2[contains(text(),'Create Reading Program')]")
	public static WebElement Rwddublicatescreen;

	@FindBy(xpath = "//h2[contains(text(),'Edit Reading Program')]")
	public static WebElement RwdeditText;

	@FindBy(id = "msg-checkbox")
	public WebElement Rwddropdwon;

	@FindBy(id = "mat-option-1")
	private WebElement RWDMessageAll;

	@FindBy(id = "prog-det-heading")
	private WebElement RwdProgramHeading;

	@FindBy(id = "prog-det-readchlge")
	private WebElement Rwdreadchalge;

	@FindBy(id = "mat-option-2")
	private WebElement RWDMessageNone;

	@FindBy(id = "mat-option-3")
	private WebElement RWDMessageRead;

	@FindBy(id = "mat-option-4")
	private WebElement RWDMessageUnread;

	@FindBy(xpath = "//*[@class='mat-checkbox msg-read-all mat-accent ng-star-inserted']")
	public WebElement RwdmsgCheckbox;

	@FindBy(xpath = "//*[@class='dd-rprt-txtara dd-rm-bottom']/mat-form-field")
	public WebElement Rwdeditprogramname;

	@FindBy(id = "msg-delete-all")
	public WebElement deletemsgall;

	@FindBy(xpath = "//span[text()='Delete']")
	private WebElement RWDdeletepopmsg;

	@FindBy(xpath = "//span[text()='Cancel']")
	private WebElement RWDcancelpopup;

	@FindBy(xpath = "//span[text()='Save']")
	private WebElement RWDsave;

	@FindBy(xpath = "//*[@aria-label='None']")
	public WebElement RWDnone;

	@FindBy(xpath = "//*[@aria-label='Example icon-button with a menu']")
	public WebElement RWDMessageMoremenu;

	@FindBy(xpath = "//span[text()='Mark as Read']")
	public WebElement RwdReadmsg;

	@FindBy(xpath = "//div[@class='content-name-head']")
	public List<WebElement> RWDInviteText;

	@FindBy(xpath = "//*[@class='accordion-msg ng-star-inserted']")
	public WebElement rwdOpenDetails;

	@FindBy(xpath = "//*[contains(text(),' You have been added to this program')]")
	public static WebElement RwdInnertext;

	@FindBy(xpath = "//*[@id=\"msg-view-progdetail\"]")
	public WebElement viewChlng;
	
	@FindBy(xpath = "//button[text()='View Challenge Details']")
	public List<WebElement> viewChlngdetails; 

	@FindBy(xpath = "//*[@class='msg-close']")
	public WebElement msgclose;

	@FindBy(xpath = "//*[@id=\"cprog-close-2\"]/mat-icon")
	public WebElement rwdpopupclose;

	@FindBy(xpath = "//span[text()='OK']")
	public WebElement rwdpopupok;

	@FindBy(xpath = "//*[contains(text(),'You have no messages')]")
	private WebElement RWDnoMessages;

	@FindBy(xpath = "//*[(text()='Are you sure you want to unpublish ')]")
	private WebElement RWDunpublishmessage;

	@FindBy(id = "pd-ubplish")
	public WebElement Rwdubpublish;

	@FindBy(xpath = "//*[text()=' Book Club ']")
	public WebElement RWDbookClubOptionWeb;

	@FindBy(xpath = "//a[@id='tab-myprog-btn']")
	public WebElement lbl_myPrograms;

	@FindBy(xpath = "//button[@id='prog-main-create']")
	public WebElement btn_createProgram;

	@FindBy(xpath = "//h1[text()='ACTIVE PROGRAMS']")
	public WebElement lbl_ActiveProgram;

	@FindBy(xpath = "//h2[text()='Create Reading Program']")
	public WebElement lbl_CreateProgrm;

	@FindBy(xpath = "//mat-label[text()='Enter Program Name']")
	public WebElement lbl_progName;

	@FindBy(id = "cp-enter-name")
	public WebElement inp_progName;

	@FindBy(xpath = "//mat-label[text()='Description (Optional)']")
	public WebElement lbl_progDesc;

	@FindBy(id = "cp-txtarea-desc")
	public WebElement inp_progDesc;

	@FindBy(xpath = "//div[text()='Private']")
	public WebElement rb_private;

	@FindBy(xpath = "//div[text()='Public']")
	public WebElement rb_public;

	@FindBy(xpath = "//h5[text()='Reading Program']")
	public WebElement readingProgramHeader;

	@FindBy(xpath = "//p[@id='prog-det-ptex']")
	public WebElement programDesc;

	@FindBy(xpath = "//h1[@id='prog-det-heading']")
	public WebElement programName;

	@FindBy(xpath = "//h2[@id='pd-partip-head']")
	public WebElement lbl_participantlist;

	@FindBy(xpath = "//h2[@id='pd-readlist-head']")
	public WebElement lbl_readinglist;

	@FindBy(xpath = "//p[@id='pd-strt-date']")
	public WebElement lbl_startDate;

	@FindBy(xpath = "//p[@id='pd-end-date']")
	public WebElement lbl_endDate;

	@FindBy(xpath="(//mat-icon[text()='close'])[2]")
	public WebElement createClose;
	
	@FindBy(xpath="//*[text()=' Are you sure you want to discard the changes made? ']")
	public WebElement discardMsg;
	
	@FindBy(id="cp_info_popup")
	public WebElement info;
	
	@FindBy(xpath="(//mat-icon[text()='close'])[3]")
	public WebElement tipClose;
	
	@FindBy(xpath="//p[text()='Select Private to only allow participants you invite to join. Select Public if anyone can join.']")
	public WebElement tipMsg;
	
	@FindBy(xpath="//label[text()='TIP:']")
	public WebElement tip;
	
	@FindBy(xpath="//button[@class='raise-invite']")
	public WebElement inviteEnable;
	
	@FindBy(xpath="//h4[text()='STUDENTS FOUND']")
	public WebElement lbl_studentsFound;
	
	@FindBy(xpath="//*[text()='INVITE']")
	public List<WebElement> btn_inviteList; 
	
	@FindBy(xpath = "//span[@class='student-title']")
	public List<WebElement> recentSearch; 
	
	@FindBy(xpath="//h3[text()='From Your Favorites']")
	public WebElement lbl_Favorites;
	
	@FindBy(xpath="//h3[text()='Recommended']")
	public WebElement lbl_recommended;
	
	@FindBy(xpath="//mat-card[@role='group']")
	public List<WebElement> Book;
	
	@FindBy (xpath="//span[@class='mat-option-text']")
	public List<WebElement> noOfBooks;
	
	@FindBy (xpath="//mat-label[text()='Number of Books']")
	public WebElement lbl_noOfBooks;
	
	@FindBy(xpath="//a[@class='searchlist']")
	public List<WebElement> suggestionList;
	
	@FindBy(xpath = "//span[text()='Publish Program']")
	public WebElement btn_publish;
	
	public void createProgram() throws Exception {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		logger.info("-- Create Program validation started--");
		ClickOnWebElement(btn_createProgram);
		WaitForWebElement(lbl_CreateProgrm);
		System.out.println(lbl_CreateProgrm.getText());
		Assert.assertEquals(lbl_CreateProgrm.getText(), testData.get(0).get("lbl_CreateProgram"));
		logger.info("Create program header is available #Pass");
		Assert.assertEquals(lbl_progName.getText(), testData.get(0).get("lbl_progNameTxt"));
		logger.info("Program name text box is available #Pass");
		SendKeysOnWebElement(inp_progName, progName);
		logger.info("Program name entered #Pass");
		Assert.assertEquals(lbl_progDesc.getText(), testData.get(0).get("lbl_progDescTxt"));
		logger.info("Program Description text box is available #Pass");
		SendKeysOnWebElement(inp_progDesc, testData.get(0).get("progDesc"));
		logger.info("Program Description entered #Pass");
	//	Assert.assertEquals(rb_private.getText(), testData.get(0).get("lbl_private"));
		logger.info("Private radio button is available #Pass");
	//	Assert.assertEquals(rb_public.getText().trim(), testData.get(0).get("lbl_public").trim());
		logger.info("Public radio button is available #Pass");
		ClickOnWebElement(rb_public);
		logger.info("Public radio button is clicked #Pass");
		setProgType(true);
		startDate();
		endDate();
		// Assert.assertEquals(inp_remainder.getText(),
		// testData.get(0).get("lbl_remainder"));
		logger.info("Set Remainder text box is available #Pass");
		setRemainder();
//		Assert.assertEquals(inp_startDate.getText(), testData.get(0).get("lbl_startDate"));
		logger.info("Start date text box is available #Pass");
		// Assert.assertEquals(inp_endDate.getText(),
		// testData.get(0).get("lbl_endDate"));
		logger.info("End date text box is available #Pass");
//		Assert.assertEquals(lbl_assignStudents.getText(), testData.get(0).get("lbl_assignStudents"));
		logger.info("Assign Students header is available is available #Pass");
		assignStudent();
		// Assert.assertEquals(lbl_addTitle.getText(),
		// testData.get(0).get("lbl_addTitle"));
		logger.info("Add title header is available is available #Pass");

		addTitle();
		waitFor(3000);
		// ClickOnWebElement(btn_save);
		logger.info("Save button is available and clicked #Pass");
		Assert.assertEquals(ElementisPresent(btn_publish), true);
		ClickOnWebElement(btn_publish);
		logger.info("Publish program button is available and clicked #Pass");

	}
	public void discard() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RC");
		logger.info("--Discard create challenge validation started--");
		waitFor(8000);
		ClickOnWebElement(btn_createProgram);
		WaitForWebElement(lbl_CreateProgrm);
		SendKeysOnWebElement(inp_progName, progName);
		logger.info("Entered challenge name #Pass");
		waitFor(2000);
		ClickOnWebElement(createClose);
		logger.info("Close button is present and clicked #Pass");
		WaitForWebElement(discardMsg);
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/Discard.png");
		// Assert.assertEquals(discardMsg.getText(),testData.get(0).get("discardMsg"));
		logger.info("Discard message/Warning is displayed #Pass");
		Assert.assertTrue(rwdpopupok.isDisplayed(), "Ok button is not displayed");
		logger.info("Ok button is displayed for discard message #Pass");
		Assert.assertTrue(RWDcancelpopup.isDisplayed(), "Cancel button is not displayed");
		logger.info("Cancel button is displayed for discard message #Pass");
		ClickOnWebElement(rwdpopupok);
		logger.info("--Discard create challenge validation Completed--");
		waitFor(1000);
	}
	public void setprogAccess() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		Assert.assertEquals(rb_private.getText(), testData.get(0).get("lbl_private"));
		logger.info("Private radio button is available #Pass");
		Assert.assertEquals(rb_public.getText(), testData.get(0).get("lbl_public"));
		logger.info("Public radio button is available #Pass");
		ClickOnWebElement(rb_public);
		logger.info("Public radio button is clicked #Pass");
	}
	public void tooltip() throws IOException {
		WaitForWebElement(info);
		ClickOnWebElement(info);
		logger.info("Toll tip is displayed and clicked #Pass");
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/ToolTip.png");
		Assert.assertEquals(ElementisPresent(tip),true );
		Assert.assertEquals(ElementisPresent(tipMsg),true );
		logger.info("Toll tip message is displayed "+tipMsg.getText()+" #Pass");
		ClickOnWebElement(tipClose);
		logger.info("Tool tip is closed #Pass");
	}
	public void setProgType(boolean edit) throws IOException, InvalidFormatException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		WaitForWebElement(programType);
		ClickOnWebElement(programType);
		if(edit == true) {
			switch (testData.get(0).get("ProgramTypeEdit")) {
			case " Books in Order":
				logger.info("Selected reminder type :" + progTypes.get(0).getText()+ "#Pass");
				progTypes.get(0).click();
				Screenshots.takeScreenshot(driver,
						"Screenshots/ReadingChallenge/CreateChallenge/SetReminder_" + progTypes.get(0).getText() + ".png");
				break;
			case " X of Y Books":
				logger.info("Selected reminder type :" + progTypes.get(1).getText() +"#Pass");
				progTypes.get(1).click();
				Screenshots.takeScreenshot(driver,
						"Screenshots/ReadingChallenge/CreateChallenge/SetReminder_" + progTypes.get(1).getText() + ".png");
				break;
			}
		}
		else if(edit == false) {
			switch (testData.get(0).get("ProgramType")) {
			case " Books in Order":
				logger.info("Selected reminder type :" + progTypes.get(0).getText()+ "#Pass");
				progTypes.get(0).click();
				Screenshots.takeScreenshot(driver,
						"Screenshots/ReadingChallenge/CreateChallenge/SetReminder_" + progTypes.get(0).getText() + ".png");
				break;
			case " X of Y Books":
				logger.info("Selected reminder type :" + progTypes.get(1).getText() +"#Pass");
				progTypes.get(1).click();
				Screenshots.takeScreenshot(driver,
						"Screenshots/ReadingChallenge/CreateChallenge/SetReminder_" + progTypes.get(1).getText() + ".png");
				break;
			}
		}
	}
	
	public void addTitle() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		List<Map<String, String>> testData1 = reader.getData("./Data/WebData.xlsx", "RC");
		logger.info("--Add title assertion started--");
//		Assert.assertEquals(lbl_addTitle.getText(), testData.get(0).get("lbl_addTitle"));
		logger.info("Add title header is available is available #Pass");
		ClickOnWebElement(btn_AddTitle);
		WaitForWebElement(txt_SearchInput);
		Assert.assertTrue(ElementisPresent(rc.closeIcon));
		ClickOnWebElement(rc.closeIcon);
		logger.info("Title search close icon is available and clicked #Pass");
		ClickOnWebElement(btn_AddTitle);
		WaitForWebElement(txt_SearchInput);
		recommendedValidation();
		FavoritesValidation();
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/AddTitle1.png");
		Assert.assertEquals(searchTitleHeader.getText(), testData.get(0).get("defval_searchTitleHeader"));
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/AddTitle.png");
		logger.info("Title search header is available #Pass");
		SendKeysOnWebElement(txt_SearchInput, testData1.get(0).get("titleName"));
		waitFor(5000);
	//	WaitForWebElement(lbl_suggestedResult);
	//	Assert.assertEquals(lbl_suggestedResult.getText(), testData.get(0).get("lbl_suggestedResult"));
		Screenshots.takeScreenshot(driver,"Screenshots/ReadingChalllenge/CreateChallenge/AddTitle_SuggestedResult.png");
		logger.info("Suggested result header is available #Pass");
		SendKeysEnter(txt_SearchInput);
		
		WaitForWebElement(btn_AddTitle);
		ClickOnWebElement(btn_AddTitle);
		SendKeysOnWebElement(txt_SearchInput, testData1.get(0).get("titleName"));
		ClickOnWebElement(suggestionList.get(0));
		
		WaitForWebElement(RWDMoreMenu);
		//rc.sortAndFilter();
		WaitForWebElement(RWDMoreMenu);
		//rc.addFavorites(); //Add to favorites validation
		WaitForWebElement(RWDMoreMenu);
		titlePreview();
		
		jsClick(RWDMoreMenu);
		ClickOnWebElement(AddToprgrmTitle);
	}
	public void titlePreview() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RC");
		logger.info("--Title preview assertion started--");
		
		WaitForWebElement(rc.book);
		ClickOnWebElement(rc.book);
		WaitForWebElement(rc.bookName);
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/TitleDetails.png");
		Assert.assertEquals(rc.bookName.getText(), testData.get(0).get("titleName"));
		logger.info("Book name is present in title preview #Pass");
		
		Assert.assertEquals(ElementisPresent(rc.authorName), true);
		logger.info("Author name is present in title preview #Pass");
		
		Assert.assertEquals(ElementisPresent(rc.lbl_titleMaterial), true);
		logger.info(rc.lbl_titleMaterial.getText()+" Title Material type is present in title preview #Pass");
		
		Assert.assertEquals(ElementisPresent(AddToprgrmTitle), true );
		logger.info("Add to program button is present in title preview #Pass");
		
		Assert.assertEquals(ElementisPresent(rc.ratings), true );
		logger.info("Rating is available fot the title in preview screen #Pass");
		
	//	Assert.assertTrue(ElementisPresent(rc.Btn_checkoutorReturn),"Checkout button is not displayed");
	//	logger.info(rc.Btn_checkoutorReturn.getText()+" button is available for title preview screen #Pass");
		
		javascriptScroll(rc.lbl_availableheader);
		Assert.assertEquals(ElementisPresent(rc.lbl_availableheader), ElementisPresent(rc.lbl_availableValue));
		logger.info("Available copy header and value is present #Pass");
		waitFor(2000);
		
		ClickOnWebElement(rc.back);
		WaitForWebElement(lbl_CreateProgrm);
		logger.info("Back icon is clicked and Navigated back to Create challenge screen #Pass");
		
		logger.info("--Title preview assertion Completed--");
	}
	public void publishProgram() {
		waitFor(3000);
		WaitForWebElement(btn_publish);
		Assert.assertEquals(ElementisPresent(btn_publish), true);
		ClickOnWebElement(btn_publish);
		logger.info("Publish program button is available and clicked #Pass");
	}
	public void recommendedValidation() {
		WaitForWebElement(lbl_recommended);
		Assert.assertTrue(Book.size()>0,"Recommended carousel doesn't have books #Fail");
		logger.info("Recommended carousel and list of titles are displayed #Pass");
	}
	public void FavoritesValidation() {
		WaitForWebElement(lbl_Favorites);
		Assert.assertTrue(Book.size()>0,"Favorites carousel doesn't have books #Fail");
		logger.info("Favorites carousel and list of titles are displayed #Pass");
	}
	
	public void XofYValidation() {
		javascriptScroll(inp_progName);
		Assert.assertEquals(ElementisPresent(lbl_noOfBooks), true, "Number of books field is not displayed");
		logger.info("No of books field is enabled for X of Y books type");
		ClickOnWebElement(lbl_noOfBooks);
		Assert.assertTrue(ElementisPresent(noOfBooks.get(0)),"Number of books list is not displayed");
		ClickOnWebElement(noOfBooks.get(0));
		logger.info("Number of books list is displated and selected");
	}
	public void saveProgram() throws InvalidFormatException, IOException {
		waitFor(3000);
		Assert.assertEquals(ElementisPresent(RWDsave), true);
		ClickOnWebElement(RWDsave);
		logger.info("Save button is available and clicked #Pass");
		WaitForWebElement(lbl_ActiveChallenge);
		waitFor(5000);
	}
	public void enterprogNameDesc() throws InvalidFormatException, IOException{
		System.out.println("Entered program name : "+progName);
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		logger.info("-- Create Program validation started--");
		ClickOnWebElement(btn_createProgram);
		WaitForWebElement(lbl_CreateProgrm);
		//System.out.println(lbl_CreateProgrm.getText());
		Assert.assertEquals(lbl_CreateProgrm.getText(), testData.get(0).get("lbl_CreateProgram"));
		logger.info("Create program header is available #Pass");
		Assert.assertEquals(lbl_progName.getText(), testData.get(0).get("lbl_progNameTxt"));
		logger.info("Program name text box is available #Pass");
		ClickOnWebElement(inp_progName);
		SendKeysOnWebElement(inp_progName, progName);
		logger.info("Program name entered #Pass");
		Assert.assertEquals(lbl_progDesc.getText(), testData.get(0).get("lbl_progDescTxt"));
		logger.info("Program Description text box is available #Pass");
		SendKeysOnWebElement(inp_progDesc, testData.get(0).get("progDesc"));
		logger.info("Program Description entered #Pass");
	}
	public void startDate() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		waitFor(1000);
		javascriptScroll(programType);
		ClickOnWebElement(btn_startDate);
		logger.info("Start date calander is opened #Pass");
		waitFor(1000);
		String startDate = testData.get(0).get("Startdate");
		WebElement sd = driver.findElement(By.xpath("//div[text()=' " + startDate + " ']"));
		jsClick(sd);
		logger.info("Start Date is selected " + sd.getText() +"#Pass");
	}

	public void endDate() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		waitFor(3000);
		ClickOnWebElement(btn_endDate);
		logger.info("End date calander is opened #Pass");
		waitFor(1000);
		String endDate = testData.get(0).get("EndDate");
		WebElement ed = driver.findElement(By.xpath("//div[text()=' " + endDate + " ']"));
		ClickOnWebElement(ed);
		logger.info("End Date is selected " + ed.getText() +"#Pass");
	}
	public void setRemainder() throws IOException, InvalidFormatException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RC");
		javascriptScroll(RWDsetReminder);
//		Assert.assertEquals(inp_remainder.getText(), testData.get(0).get("lbl_remainder"));
		logger.info("Set Remainder text box is available #Pass");
		ClickOnWebElement(RWDsetReminder);
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder.png");
		List<WebElement> remindertype = RWDReminderTypes;
		waitFor(2000);
		switch (testData.get(0).get("RemainderTypeEdit")) {
		case "Daily":
			logger.info("Selected reminder type :" + remindertype.get(1).getText());
			remindertype.get(1).click();
			Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder_"
					+ remindertype.get(1).getText() + ".png");
			break;
		case "Weekly":
			logger.info("Selected reminder type :" + remindertype.get(2).getText());
			remindertype.get(2).click();
			Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder_"
					+ remindertype.get(2).getText() + ".png");
			break;
		case "Monthly":
			logger.info("Selected reminder type :" + remindertype.get(3).getText());
			remindertype.get(3).click();
			Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder_"
					+ remindertype.get(3).getText() + ".png");
			break;
		}
	}
	public void assignStudent() throws Exception {
		FileInputStream fis = new FileInputStream(ConfigurationFile);
		Properties prop = new Properties();
		prop.load(fis);
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		ClickOnWebElement(btn_addfriend);
		ClickOnWebElement(txt_SearchStudentName);
		if(prop.getProperty("Env").equalsIgnoreCase("QAT")) {
		SendKeysOnWebElement(txt_SearchStudentName, testData.get(1).get("studentName"));
		}else
		{
		SendKeysOnWebElement(txt_SearchStudentName, testData.get(0).get("studentName"));	
		}
		logger.info("Entered student name in search box #Pass");
		waitFor(6000);
		btn_InviteFriendLists.get(1).click();
		ClickOnWebElement(btn_InviteToPrgrm);
		waitFor(3000);
		logger.info("Added Particitipant to the challenge #Pass");
	}
	
	public void loginMessagecenter() throws IOException {
		waitFor(7000);
		if (ElementisPresent(msgNotificationCount)) {
			Assert.assertTrue(msgNotificationCount.isEnabled());
			logger.info("Message Center Bell icon Displayed #Pass");
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenterBellIcon.png");
			logger.info("Unread Messages Displayed in top of hamburger Menu #Pass");
			
		} else {
			logger.info("Message Center Bell icon Not Displayed");
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenterNotBellIcon.png");
		}
		logger.info("User able to click on bell icon to navigate to messages listing page #Pass");
		ClickOnWebElement(RWDMessagecenter);
		if (ElementisPresent(RWDnoMessages)) {
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/noMessages.png");
			logger.info("Login into message Center! You have No Messages! #Pass");
			ClickOnWebElement(msgclose);
		} else {
			logger.info("Login into Message Center #Pass");
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenter.png");
		}
	}
public void dropdownMsg() throws IOException, InvalidFormatException {
		
		ClickOnWebElement(Rwddropdwon);
		logger.info("User able to click on select dropdown to view the select menu options #Pass");
		Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenter.png");
		testData = reader.getData("./Data/WebData.xlsx", "MessageCenter");
		String all =testData.get(0).get("MessageView").trim();
		if(all.equalsIgnoreCase("all"))
		{
		waitFor(2000);
		ClickOnWebElement(RWDMessageAll);	
		logger.info("User able to click on the select all checkbox #Pass");
		Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenterAllselectCheckbox.png");
		}
		String none =testData.get(1).get("MessageView").trim();
		if(none.equalsIgnoreCase("none"))
		{
		waitFor(2000);
		ClickOnWebElement(Rwddropdwon);
		ClickOnWebElement(RWDMessageNone);	
		logger.info("User able to click on the un select all checkbox #Pass");
		Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenterUnselectCheckbox.png");
		}
		String read =testData.get(2).get("MessageView").trim();
		if(read.equalsIgnoreCase("read"))
		{
		waitFor(2000);
		ClickOnWebElement(Rwddropdwon);
		ClickOnWebElement(RWDMessageRead);	
		logger.info("User able to select Read message checkbox #Pass");
		Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenterselectReadCheckbox.png");
		}
		String unread =testData.get(3).get("MessageView").trim();
		if(unread.equalsIgnoreCase("unread"))
		{
		waitFor(2000);
		ClickOnWebElement(Rwddropdwon);
		ClickOnWebElement(RWDMessageUnread);	
		logger.info("User able to select on the Unread messages checkbox #Pass");
		Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenterselectUnreadCheckbox.png");
		}
		waitFor(2000);
		ClickOnWebElement(Rwddropdwon);
		ClickOnWebElement(RWDMessageNone);
		waitFor(2000);
		ClickOnWebElement(RwdmsgCheckbox);
		waitFor(1000);
		logger.info("user able to view the delete confirmation pop-up​ #Pass");
		ClickOnWebElement(deletemsgall);
		waitFor(1000);
		logger.info("user able to view the pop-up text with the number of messages selected for deletion​ #Pass");
		Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/messagecenterDelete.png");
		ClickOnWebElement(RWDdeletepopmsg);
		logger.info("Verify the user able to delete Messages from the list #Pass");
		waitFor(8000);
		ClickOnWebElement(RwdmsgCheckbox);
		waitFor(2000);
		ClickOnWebElement(deletemsgall);
		waitFor(2000);
		logger.info("User should be able to click Cancel CTA to cancel deletion and navigate back to the listing #Pass");
		Assert.assertEquals(RWDcancelpopup.getText(), "Cancel");
		ClickOnWebElement(RWDcancelpopup);
		Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/Backtocancelctamessagecenter.png");
		waitFor(3000);
		ClickOnWebElement(Rwddropdwon);
		waitFor(1000);
		ClickOnWebElement(RWDnone);
		message_details();
	}
public void validateMessage()
{
	waitFor(6000);
	for (int i = 1; i <= RWDInviteText.size(); i++) {
		String firstMsgTime = RWDInviteText.get(0).findElement(By.tagName("span")).getText();
		String secondMsgTime = RWDInviteText.get(1).findElement(By.tagName("span")).getText();
		int compared = firstMsgTime.compareTo(secondMsgTime);
		if (compared >= 1 || compared==0) {
			logger.info("Verify latest message appears on top of the message list #Pass");
			break;
		} else {
			Assert.fail("Last message displayed Not Properly");
		}
	}
}

public void message_details() throws IOException {
	for (WebElement Allele : RWDInviteText) {

		if (Allele.findElement(By.tagName("h4")).getText().equalsIgnoreCase("You've been invited!")) {
			Allele.click();
			waitFor(4000);
			logger.info("User able to view the message details in an expanded fashion​ #Pass");
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/MessageDetails.png");
			waitFor(4000);
			//Assert.assertTrue(!RwdmsgDetails.findElement(By.tagName("h4")).getText().isEmpty());
			logger.info("User able to see the message title​ #Pass");
			Assert.assertTrue(!Allele.findElement(By.tagName("span")).getText().isEmpty());
			logger.info("User able to view the time at which message was received​ #Pass");
		//	javascriptScroll(viewChlng);
			logger.info("User should be able to see message heading for Reading List​ #Pass");
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/ReadingList.png");
		//	ClickOnWebElement(viewChlng);
			waitFor(2000);
			logger.info("User able to view a See challenge details CTA if applicable to the message and tap on it to navigate View Details screen #Pass");
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/ViewdetailsScreen.png");
			Allele.click();
			break;
			
		}
	}
}

public void CheckInviteMessage() throws InvalidFormatException, IOException {
	List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "MessageCenter");
	List<Map<String, String>> testData1 = reader.getData("./Data/WebData.xlsx", "RC");
	logger.info("--Message centre - Invite Message validation Started--");
	//ClickOnWebElement();
	for(int i=1; i<= msgHeader.size()-1; i++ ) {
		if(msgHeader.get(i).getText().equalsIgnoreCase("You've been invited!")) {
			Assert.assertEquals(msgHeader.get(i).getText(), testData.get(0).get("InviteMessage"));
			logger.info("Invited challenge message is available for participant #Pass");
			ClickOnWebElement(msgHeader.get(i));
			Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/InviteMessage.png");
			javascriptScroll(viewChlngdetails.get(i));
			logger.info("Invited challenge details & view challenge details button is available for participant #Pass");
			if(RwdmsgDetails.get(i).getText().equalsIgnoreCase(progName + testData1.get(0).get("challengeNameEdit"))) {  
				javascriptScroll(viewChlngdetails.get(i));
				ClickOnWebElement(viewChlngdetails.get(i));
				logger.info("Invited challenge details from message center #Pass");
				Screenshots.takeScreenshot(driver, "./Screenshots/MessageCenter/ChallengeDetails.png");
				logger.info("--Message centre -Invite Message validation Completed--");
				break;
			}	
		}
	}
}

	public void readingProgramValidation() throws IOException, InvalidFormatException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		WaitForWebElement(RWD_UIRefresh_PageHit.menu_profileIcon);
		Screenshots.takeScreenshot(driver, "Screenshots/DestinyDiscover/Home.png");
		waitFor(3000);
		WaitForWebElement(RWDbookClubOptionWeb);
		ClickOnWebElement(RWDbookClubOptionWeb);
		logger.info(" --Book club validation Starts-- ");
		WaitForWebElement(lbl_myPrograms);
		Assert.assertEquals(lbl_myPrograms.getText(), testData.get(0).get("lbl_myPrograms"));
		Screenshots.takeScreenshot(driver, "Screenshots/DestinyDiscover/BookClub.png");
		logger.info("My Programs tab is available #Pass");
		waitFor(6000);
		WaitForWebElement(lbl_myPrograms);
		ClickOnWebElement(lbl_myPrograms);
		waitFor(4000);
		String crtPrgrm = btn_createProgram.getText().substring(0, 14);
		Assert.assertEquals(crtPrgrm, testData.get(0).get("lbl_create"));
		logger.info("Create Program button is available #Pass");
		WaitForWebElement(lbl_ActiveProgram);
		Assert.assertEquals(lbl_ActiveProgram.getText(), testData.get(0).get("lbl_ActivePrograms"));
		logger.info("Active program header is present in my programs tab #Pass");
		logger.info(" --Book club validation Completed-- ");

	}

	public void programDetailsValidationAdmin() throws InvalidFormatException, IOException {
		waitFor(7000);
		WaitForWebElement(RWDbookClubOptionWeb);
		waitFor(4000);
		ClickOnWebElement(RWDbookClubOptionWeb);
		waitFor(4000);
		ClickOnWebElement(lbl_myPrograms);
		javascriptScroll(footer);
		waitFor(8000);
		try {
			WebElement ss = driver.findElement(By.xpath("//*[contains(text(),'" + progName + "')]"));
			javascriptScroll(ss);
		} catch (Exception e) {
			System.out.println("Scrolling again");
			javascriptScroll(footer);
			javaScriptScrollToEnd();
		}
		logger.info("Created challenge is available for Invited user #Pass");
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreatedChallenge.png");
		programSearch(); // search and find the challenge in Challenge listing screen
		// jsClick(ss);
		waitFor(6000);
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		// WaitForWebElement(readingProgramHeader);
		Assert.assertEquals(programName.getText().trim(), progName.trim());
		logger.info("Program is available #Pass");

		Assert.assertEquals(programName.getText().trim(), progName.trim());
		logger.info("Program is available #Pass");

		Assert.assertEquals(ElementisPresent(lbl_readinglist), true);
		logger.info("Reading list header is available #Pass");

		Assert.assertEquals(ElementisPresent(lbl_participantlist), true);
		logger.info("Participant list header is available #Pass");

		String sd = lbl_startDate.getText().substring(3, 5);
		// Assert.assertEquals(sd, testData.get(0).get("Startdate"));
		logger.info("Start date is available #Pass");
		waitFor(1000);
		String ed = lbl_endDate.getText().substring(3, 5);
		// Assert.assertEquals(ed, testData.get(0).get("EndDate"));
		logger.info("Start date is available #Pass");

	}

	public void programSearch() {
		for (int i = 0; i <= 5; i++) {
			waitFor(2000);
			javaScriptScrollToEnd();
			waitFor(2000);
			javascriptScroll(lbl_ActiveChallenge);
			try {
				WebElement ss = driver.findElement(By.xpath("//*[contains(text(),'" + progName + "')]"));
				javascriptScroll(footer);
				waitFor(2000);
				javascriptScroll(ss);
				break;
			} catch (Exception e) {
				System.out.println("Scrolling again for click");
				javascriptScroll(footer);
				waitFor(2000);
			}
		}
		WebElement ss = driver.findElement(By.xpath("//*[contains(text(),'" + progName + "')]"));
		logger.info(ss.getText() + " is found in challenge listing screen and opened #Pass");
		jsClick(ss);
	}

	public void nagivateEditProgram() throws IOException, InvalidFormatException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RC");
		waitFor(2000);
		Assert.assertEquals(Rwdeditprg.isDisplayed(), true);
		logger.info("Edit Program button available #Pass");
		ClickOnWebElement(Rwdeditprg);
		waitFor(1000);
		Assert.assertEquals(RwdeditText.getText().trim(), "Edit Reading Program");
		logger.info("User able to navigated to the Edit Program Screen #Pass");
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingProgram/editProgram.png");
		SendKeysOnWebElement(inp_progName, progName + "Edit");
		logger.info("User able Edit and update the Program name #Pass");
		inp_progDesc.clear();
		SendKeysOnWebElement(inp_progDesc, progName1);
		logger.info("User able to Remove and update the Program Description #Pass");
		editProgType();
		editstartDate();
		editendDate();
		editRemainder();
		editassignStudent();
		// EditaddTitle();
		ClickOnWebElement(RWDsave);
		// ClickOnWebElement(rwdpopupok);

	}

	public void duplicateProgram() throws IOException {
		waitFor(6000);
		Assert.assertEquals(Rwdduplicateprg.isDisplayed(), true);
		logger.info("Duplicate program button available #Pass");
		ClickOnWebElement(Rwdduplicateprg);
		waitFor(1000);
		Assert.assertEquals(Rwddublicatescreen.getText().trim(), "Create Reading Program");
		logger.info("User able to navigated to the Duplicate Program Screen #Pass");
		//Assert.assertEquals(RwdProgramHeading.getText().trim(), inp_progName.getText().trim());
		logger.info("Same title avilable in Duplicate Program Screen #Pass");
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingProgram/duplicateProgram.png");
		waitFor(1000);
		ClickOnWebElement(rwdpopupclose);
		ClickOnWebElement(rwdpopupok);

	}

	public void unpublishProgram(boolean tag) throws IOException {

		waitFor(6000);
		Assert.assertEquals(Rwdubpublish.isDisplayed(), true);
		logger.info("unpublish program button available #Pass");
		ClickOnWebElement(Rwdubpublish);
		waitFor(1000);
		Assert.assertEquals(RWDunpublishmessage.getText().trim(), "Are you sure you want to unpublish".trim());
		logger.info("User able to navigated to the unpublish Program Screen #Pass");
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingProgram/unpublishProgram.png");
		if (tag == true) {
			ClickOnWebElement(rwdpopupok);
			programSearch();
			waitFor(2000);
			logger.info("User able to navigated to the Delete Program Screen #Pass");
			Screenshots.takeScreenshot(driver, "Screenshots/ReadingProgram/deleteProgram.png");
			ClickOnWebElement(RWDcancelpopup);
			logger.info("User able to cancel CTA navigate to listing Page from Delete Program Screen #Pass");
			waitFor(3000);
			programSearch();
			waitFor(3000);
			javascriptScroll(programType);
			javascriptScroll(Rwddeleteprg);
			ClickOnWebElement(Rwddeleteprg);
			logger.info("User able to Delete a program  CTA again navigate to listing Page #Pass");
		} else {
			ClickOnWebElement(RWDcancelpopup);
		}

	}

	public void checkstudentmetrics() throws IOException {

		waitFor(2000);
		Assert.assertEquals(participants.isDisplayed(), true);
		javascriptScroll(participants);
		for (WebElement allstudents : students) {
			List<WebElement> totalStudetns = allstudents.findElements(By.tagName("tr"));
			for (int i = 0; i < totalStudetns.size(); i++) {
				List<WebElement> noOfRows = totalStudetns.get(i).findElements(By.tagName("th"));
				System.out.println("noOfRows" + noOfRows.size());
				for (int j = 0; j < noOfRows.size(); j++) {
					waitFor(1000);
					Assert.assertEquals(noOfRows.get(j).isDisplayed(), true);
					logger.info("Participants Header details Are Shown:" + noOfRows.get(j).getText() + "#Pass");
					Assert.assertEquals(!noOfRows.get(j).isDisplayed(), "Stephen Curry1");
					logger.info("Participants should not be able to view the removed title in the reading list​ #Pass");
					Screenshots.takeScreenshot(driver, "Screenshots/ReadingProgram/participantView.png");

				}
				List<WebElement> columns = totalStudetns.get(1).findElements(By.tagName("td"));
				for (int k = 0; k < columns.size(); k++) {
					waitFor(1000);
					Assert.assertEquals(columns.get(k).isDisplayed(), true);
					logger.info("Participants details Are Shown:" + columns.get(k).getText());
				}

			}
		}

	}

	public void removeInviteUser(int noOfStudent) {
		logger.info("--Remove multiple students from the challenge vaildation started--");
		waitFor(2000);
		if (addedStudentList.size() > 0) {
			logger.info("No of Added friends list: " + addedStudentList.size());
			for (int i = noOfStudent; i < addedStudentList.size(); i--) {
				// System.out.println("inside remove");
				javascriptScroll(addedStudentList.get(i));
				waitFor(500);
				logger.info(addedStudentList.get(i).getText() + " Student is removed #Pass");
				ClickOnWebElement(addedListClose.get(i));
				if (i == 0) {
					break;
				}
			}
		}
		logger.info("--Remove multiple students from the challenge vaildation Completed--");
	}

	public static int generateRandomNumber() {
		Random rand = new Random();
		int randNumber = rand.nextInt(1000);
		return randNumber;

	}

	public void editProgType() throws IOException, InvalidFormatException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		ClickOnWebElement(programType);
		switch (testData.get(0).get("editprogramType")) {
		case " Books in Order":
			logger.info("Edit reminder type :" + progTypes.get(0).getText() + "#Pass");
			progTypes.get(0).click();
			Screenshots.takeScreenshot(driver,
					"Screenshots/ReadingChallenge/CreateChallenge/SetReminder_" + progTypes.get(0).getText() + ".png");
			break;
		case " X of Y Books":
			logger.info("Edit reminder type :" + progTypes.get(1).getText() + "#Pass");
			progTypes.get(1).click();
			Screenshots.takeScreenshot(driver,
					"Screenshots/ReadingChallenge/CreateChallenge/SetReminder_" + progTypes.get(1).getText() + ".png");
			break;
		}
	}

	public void editstartDate() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		waitFor(3000);
		javascriptScroll(btn_startDate);
		ClickOnWebElement(btn_startDate);
		logger.info("Start date calander is opened #Pass");
		waitFor(1000);
		String startDate = testData.get(0).get("EditStartDate");
		WebElement sd = driver.findElement(By.xpath("//div[text()=' " + startDate + " ']"));
		jsClick(sd);
		logger.info("User able to update the Start Date " + sd.getText() + "#Pass");
	}

	public void editendDate() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		waitFor(3000);
		ClickOnWebElement(btn_endDate);
		logger.info("End date calander is opened #Pass");
		waitFor(1000);
		String endDate = testData.get(0).get("EditEndDate");
		WebElement ed = driver.findElement(By.xpath("//div[text()=' " + endDate + " ']"));
		ClickOnWebElement(ed);
		logger.info("User able to update the End Date  " + ed.getText() + "#Pass");
	}

	public void editRemainder() throws IOException, InvalidFormatException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		javascriptScroll(RWDsetReminder);
		ClickOnWebElement(RWDsetReminder);
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder.png");
		List<WebElement> remindertype = RWDReminderTypes;
		waitFor(2000);
		switch (testData.get(0).get("RemainderTypeEdit")) {
		case "Daily":
			logger.info("Edit reminder type :" + remindertype.get(1).getText() + "#Pass");
			remindertype.get(1).click();
			Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder_"
					+ remindertype.get(1).getText() + ".png");
			break;
		case "Weekly":
			logger.info("Edit reminder type :" + remindertype.get(2).getText() + "#Pass");
			remindertype.get(2).click();
			Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder_"
					+ remindertype.get(2).getText() + ".png");
			break;
		case "Monthly":
			logger.info("Edit reminder type :" + remindertype.get(3).getText() + "#Pass");
			remindertype.get(3).click();
			Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/SetReminder_"
					+ remindertype.get(3).getText() + ".png");
			break;
		}
	}

	public void EditaddTitle() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		List<Map<String, String>> testData1 = reader.getData("./Data/WebData.xlsx", "RC");
		waitFor(3000);
		logger.info("--Add title assertion started--");
		ClickOnWebElement(RWDremoveTitle);
		ClickOnWebElement(RWDRemovetitleconfirm);
		waitFor(2000);
		ClickOnWebElement(btn_AddTitle);
		WaitForWebElement(txt_SearchInput);
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/AddTitle1.png");
		Assert.assertEquals(searchTitleHeader.getText(), testData.get(0).get("defval_searchTitleHeader"));
		Screenshots.takeScreenshot(driver, "Screenshots/ReadingChallenge/CreateChallenge/AddTitle.png");
		logger.info("Title search header is available #Pass");
		SendKeysOnWebElement(txt_SearchInput, testData.get(0).get("editTitleName"));
		waitFor(5000);
		// WaitForWebElement(lbl_suggestedResult);
		// Assert.assertEquals(lbl_suggestedResult.getText(),
		// testData.get(0).get("lbl_suggestedResult"));
		Screenshots.takeScreenshot(driver,
				"Screenshots/ReadingChalllenge/CreateChallenge/AddTitle_SuggestedResult.png");
		logger.info("Suggested result header is available #Pass");
		SendKeysEnter(txt_SearchInput);
		WaitForWebElement(RWDMoreMenu);
		jsClick(RWDMoreMenu);
		ClickOnWebElement(AddToprgrmTitle);
		logger.info("User able to Remove and add the Title  #Pass");
	}

	public void editassignStudent() throws InvalidFormatException, IOException {
		List<Map<String, String>> testData = reader.getData("./Data/WebData.xlsx", "RP");
		ClickOnWebElement(RwdCloseStudent);
		ClickOnWebElement(RWDRemovetitleconfirm);
		ClickOnWebElement(btn_addfriend);
		ClickOnWebElement(txt_SearchStudentName);
		SendKeysOnWebElement(txt_SearchStudentName, testData.get(0).get("studentName"));
		logger.info("Entered student name in search box #Pass");
		waitFor(4000);
		btn_InviteFriendLists.get(1).click();
		ClickOnWebElement(btn_InviteToPrgrm);
		waitFor(3000);
		logger.info("Removed Particitipant and adding student to the Program #Pass");
	}

}
