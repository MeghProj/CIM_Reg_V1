*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/Common_WEB.robot
Resource    ../../resource/DataManager.robot
Resource    ../../resource/Configuration_WEB.robot
Resource    ../../resource/Salesforce_WEB_account.robot
Resource    ../../resource/Config_ESO_WEB.robot
Resource    ../../resource/Onepage_WEB_Account.robot

Suite Setup    Get test case data    ${TD_ACC.IT}
Test Setup    I open the browser    firefox
Test Teardown    I close the browser

*** Variables ***
${TEST_1} =    IT_SET_1



*** Test Cases ***

#create accounts in SF
#    [Tags]    GUI_POC
#    Login into salesforce    ${ADR_1}
#    Create a new account in SF    ${ADR_1}

Create Account - Register Online - IT
    [Documentation]    [CIM_SIT_W1][IT] Create account in Onepage and check if sync in ESOCRM & WHCRM
    ...    Manual Test case - DCIM-1425
    Create a new account in onepage    ${TEST_1}
    Verify the account in Mailinator
    Login in onepage profile
    Logout in onepage profile
    Login to ESO CRM
    Validate account created in ESO
    Login to WHCRM
    Validate account created in WHCRM