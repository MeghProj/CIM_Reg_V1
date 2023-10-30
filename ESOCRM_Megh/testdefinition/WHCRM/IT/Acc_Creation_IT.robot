*** Settings ***
Library    SeleniumLibrary
Resource    ../../../resource/Common_WEB.robot
Resource    ../../../resource/DataManager.robot
Resource    ../../../resource/NavConfig/Configuration_WEB.robot
Resource    ../../../resource/Salesforce_WEB_account.robot
Resource    ../../../resource/Config_ESO_WEB.robot
Resource    ../../../resource/Onepage_WEB_Account.robot

Suite Setup    Get test case data    ${TD_ADR.IT}
Test Setup    Open Chrome Browser
Test Teardown    I close the browser

*** Variables ***
${ADR_1} =      IT_SET_1
${System} =     WH
${LOG_PATH} =      C:/Users/mepandur/Desktop/D/'BMW CIM'/automation/ESOCRM_Megh/testdefinition/WHCRM/IT/log.html
${REPORT_FILE_PATH} =       C:/Users/mepandur/Desktop/D/'BMW CIM'/automation/ESOCRM_Megh/testdefinition/WHCRM/IT/log.html
${OUTPUT_DIR} =     C:/Users/mepandur/Desktop/D/'BMW CIM'/automation/ESOCRM_Megh/testdefinition/WHCRM/IT

*** Test Cases ***

#initialization of Suite
#    [Documentation]    Initialize the suite
#    Set Suite Variable    ${LOG_FILE_PATH}    ${LOG_PATH}
#    Set Suite Variable    ${REPORT_FILE_PATH}    ${REPORT_PATH}

create accounts in SF
    [Tags]    REG
    Log    ${OUTPUT_DIR}
    Login into salesforce    ${ADR_1}   ${TD_ADR.IT}    ${System}
    Sleep    5S
    Create a new account in SF    ${ADR_1}    ${TD_NAMES.FIRST}  ${TD_NAMES.LAST}   ${System}

#Create accounts via Onepage
#    [Tags]    ONE_PAGE
#    Create a new account in onepage    ${ADR_1}    ${TD_NAMES.FIRST}    ${TD_NAMES.LAST}