*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Library    String
Resource    NavConfig/Configuration_WEB.robot
Resource    DataConfig/Account_Locators.robot
Resource    DataManager.robot
Resource    DataConfig/Login_Locators.robot
Resource    DataConfig/User_Credentials.robot

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
    [Arguments]    ${cnt}   ${path}     ${System}
    log     ${path}

    Get address data    ${path}
    ${country} =    get from dictionary    ${ADRDATA.${cnt}}    country
    go to    ${Base_Url.${System}SF_${country}}

    Run Keyword If    '${system}' == 'CAR'    Navigate via advance button
    wait until element is visible    xpath=${${System}_LOGIN.USER}    10s
    ${Input_Locator} =    get webelement    xpath=${${System}_LOGIN.USER}
    input text    ${Input_Locator}    ${Username.${System}SF_${country}}
    ${passw_Locator} =    get webelement    xpath=${${System}_LOGIN.PASSWORD}
    input text    ${passw_Locator}    ${Crediantials.${System}SF_${country}}
    click button    xpath=${${System}_LOGIN.LOGIN}

Navigate via advance button
    click button    //button[contains(text(),'Advanced')]
    click element   //a[@id='proceed-link']