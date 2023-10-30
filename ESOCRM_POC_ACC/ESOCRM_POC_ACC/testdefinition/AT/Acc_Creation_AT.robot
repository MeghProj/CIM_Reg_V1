*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/Common_WEB.robot
Resource    ../../resource/DataManager.robot
Resource    ../../resource/Configuration_WEB.robot
Resource    ../../resource/Salesforce_WEB_account.robot
Resource    ../../resource/Config_ESO_WEB.robot
Resource    ../../resource/Onepage_WEB_Account.robot


Suite Setup    Get test case data    ${TD_ADR.AT}
Test Setup    I open the browser    firefox
Test Teardown    I close the browser

*** Variables ***
${ADR_1} =  AT_SET_1



*** Test Cases ***

create accounts in SF
    [Tags]    GUI_POC
    Login into salesforce    ${ADR_1}
#    Sleep    3s
#    Log    ${TD_NAMES.FIRST}
    Create a new account in SF    ${ADR_1}    ${TD_NAMES.FIRST}  ${TD_NAMES.LAST}


#Create accounts via Onepage - AT
#    [Tags]    ONE_PAGE
#    Create a new account in onepage    ${ADR_1}    ${TD_NAMES.FIRST}  ${TD_NAMES.LAST}
