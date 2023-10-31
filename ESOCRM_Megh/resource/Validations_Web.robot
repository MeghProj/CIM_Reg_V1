*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    NavConfig/Configuration_WEB.robot
Resource    Config_ESO_WEB.robot
Resource    DataConfig/Account_Locators.robot
Resource    DataManager.robot
Library    ../Lib/random_names.py

*** Variables ***


*** Keywords ***

Validate SF data    
    [Arguments]     ${expectedData}    ${loc}      ${field}
#    Scroll Element Into View    xpath= ${loc}
    Sleep    5s
    ${appData} =   get text    xpath= ${loc}
    TRY
        Should Be Equal    ${appData}    ${expectedData}
    EXCEPT
        Log    ${field} is not same as entered data ${expectedData}
    END
