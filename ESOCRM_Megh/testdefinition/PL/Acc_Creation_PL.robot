*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/Common_WEB.robot
Resource    ../../resource/DataManager.robot
Resource    ../../resource/NavConfig/Configuration_WEB.robot
Resource    ../../resource/Salesforce_WEB_account.robot
Resource    ../../resource/Config_ESO_WEB.robot
Resource    ../../resource/Onepage_WEB_Account.robot

Suite Setup    Set up Suite data    ${TD_ADR.PL}
Test Setup    Open Chrome Browser
Test Teardown    I close the browser

*** Variables ***
${ADR_1} =      PL_SET_1
${System} =      ESO


*** Test Cases ***

create accounts in SF
    [Tags]    REG
    Login into salesforce    ${ADR_1}   ${TD_ADR.PL}    ${System}
    Sleep    10S
    Create a new account in SF    ${ADR_1}    ${TD_NAMES.FIRST}  ${TD_NAMES.LAST}   ${System}
#    Validate Created account in SF    Kyrstina    Billi_sogsun    +4930719078202    kyrstina.billi_sogsun_sogsun@mailinator.com    ESO


#Create accounts via Onepage
#    [Tags]    ONE_PAGE
#    Create a new account in onepage    ${ADR_1}    ${TD_NAMES.FIRST}    ${TD_NAMES.LAST}