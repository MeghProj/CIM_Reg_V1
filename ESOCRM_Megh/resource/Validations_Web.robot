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
    [Arguments]     ${fieldName}    ${loc}      ${system}
    Scroll Element Into View    xpath=${${System}_ACC_LOC.FSTLST_NM}
    ${name} =   get text    xpath=${${System}_ACC_LOC.FSTLST_NM}
    TRY
        Should Be Equal    ${name}    ${fieldName}
    EXCEPT
        Log    Name is not same as entered data
    END
