*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Library    String
Resource    Configuration_WEB.robot
Resource    Account_Locators.robot
Resource    DataManager.robot

*** Variables ***
${DELAY}  0

*** Keywords ***
I open the browser
    [Arguments]    ${slct_browser}
    run keyword if    '${slct_browser}' == 'firefox'    Open Firefox Browser
    ...    ELSE    Open Chrome Browser

Open Firefox Browser
    open browser    about:blank    firefox
    maximize browser window
    set selenium speed    ${DELAY}

Open Chrome Browser
    open browser    about:blank    chrome
    maximize browser window
    set selenium speed    ${DELAY}

I close the browser
    Close Browser

Login into salesforce
    [Arguments]    ${cnt}

    Get address data    ${TD_ADR.PL}
    ${country} =    get from dictionary    ${ADRDATA.${cnt}}    country
    go to    ${Base_Url.ESOSF_${country}}
    wait until element is visible    xpath=${ESO_LOC.USER}    10s
    ${Input_Locator} =    get webelement    xpath=${ESO_LOC.USER}
    input text    ${Input_Locator}    ${Username.ESOSF_${country}}
    ${passw_Locator} =    get webelement    xpath=${ESO_LOC.PASSWORD}
    input text    ${passw_Locator}    ${Crediantials.ESOSF_${country}}
    click button    xpath=${ESO_LOC.LOGIN}
    Capture Page Screenshot     screenshot.png




