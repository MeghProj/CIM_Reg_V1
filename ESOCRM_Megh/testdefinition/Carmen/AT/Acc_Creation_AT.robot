*** Settings ***
Library    SeleniumLibrary
Resource    ../../../resource/Common_WEB.robot
Resource    ../../../resource/DataManager.robot
Resource    ../../../resource/NavConfig/Configuration_WEB.robot
Resource    ../../../resource/Salesforce_WEB_account.robot
Resource    ../../../resource/Config_ESO_WEB.robot
Resource    ../../../resource/Onepage_WEB_Account.robot

Suite Setup    Get test case data    ${TD_ADR.AT}
Test Setup    Open Chrome Browser
Test Teardown    I close the browser

*** Variables ***
${ADR_1} =      AT_SET_1
${System} =     CAR



*** Test Cases ***

create accounts in Carmen
    [Tags]    REG
    Login into salesforce    ${ADR_1}   ${TD_ADR.AT}    ${System}
    Sleep    5s
    Create a new account in Carmen    ${ADR_1}    ${TD_NAMES.FIRST}  ${TD_NAMES.LAST}   ${System}

#Create accounts via Onepage
#    [Tags]    ONE_PAGE
#    Create a new account in onepage    ${ADR_1}    ${TD_NAMES.FIRST}    ${TD_NAMES.LAST}