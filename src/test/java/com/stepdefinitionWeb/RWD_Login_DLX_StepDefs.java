package com.stepdefinitionWeb;

import com.base.CapabilitiesAndWebDriverUtils;
import com.pom.Login;
import com.pom_RWD.Login_RWD;
import com.pom_RWD.RWD_BookClubLandingScreen;
import com.pom_RWD.RWD_CreateaChallenge_AddTitles;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import org.junit.Assert;
import org.openqa.selenium.Capabilities;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.io.IOException;

public class RWD_Login_DLX_StepDefs extends CapabilitiesAndWebDriverUtils  {

   Login_RWD login_RWD = new Login_RWD();

    @Given("User is logged in user name {string} and password on DLX env")
    public void userIsLoggedInDLX(String user) throws InterruptedException, IOException {
        waitForPageLoaded(login_RWD.getRWD_DLX_Login_button());
        String uAgent = (String) ((JavascriptExecutor) driver).executeScript("return navigator.userAgent;");
        System.out.println(uAgent);
        String username =getData(user); String password = user;
        logger.info("DLX login page is shown");
        waitForElementClick(login_RWD.getRWD_DLX_Login_button());
        System.out.println(login_RWD.getRWD_DLX_LoginPageHeader().getText());
        Assert.assertEquals(login_RWD.getRWD_DLX_LoginPageHeader().getText(),"Log in using your Follett account");
        Assert.assertEquals(login_RWD.getRWD_DLX_usernameHeader().getText(),"Username");
        login_RWD.getRWD_DLX_UserName().sendKeys(username);
        logger.info("DLX login , Username entered");
        System.out.println(login_RWD.getRWD_DLX_passwordHeader().getText());
        Assert.assertEquals(login_RWD.getRWD_DLX_passwordHeader().getText(),"Password");
        login_RWD.getRWD_DLX_Password().sendKeys(username);
        System.out.println(login_RWD.getRWD_DLX_LoginNote().getText());
        Assert.assertEquals(login_RWD.getRWD_DLX_LoginNote().getText(),"Trouble logging in? Ask your media specialist or librarian.");
        logger.info("DLX login , Password entered");
        ClickOnWebElement(login_RWD.getRWD_DLX_Submit());
        logger.info("DLX login , Submit clicked ");
        waitForElementClick(login_RWD.getRWD_DD_BookClub());
        logger.info("DLX login , Clicked DD Book Club");
    }


    
    @Then("User logout from application successfully")
    public void userlogsout_from_application()
    {
    	if(IsDisplayedWebElement(login_RWD.getRWD_DLX_Welcomeback_link()))
        {
        logger.info("DLX login page is shown");
        ClickOnWebElement(login_RWD.getRWD_DLX_Welcomeback_link());
        Assert.assertTrue("Logout link is shown", IsDisplayedWebElement(login_RWD.getRWD_DLX_Logout_button()));
        ClickOnWebElement(login_RWD.getRWD_DLX_Logout_button());
        Assert.assertTrue("DLX logout successfully",IsDisplayedWebElement(login_RWD.getRWD_DLX_Login_button()));
        }else
        {
        	logger.info("DLX Welcomeback user name link is not shown");
        	 Assert.assertFalse("DLX Welcomeback user name link is not shown",true);
        }
    }
}
