*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Library    String


*** Variables ***
${DELAY}  0

*** Keywords ***

Login into salesforce
    go to    https://wht-pool--fullint1.sandbox.lightning.force.com/lightning/r/Account/0013L00000axUWTQA2/view
    wait until element is visible    xpath=//input[@id="username"]    10s
    ${Input_Locator} =    get webelement    xpath=//input[@id="username"]
    input text    ${Input_Locator}    lalith.daroori@partner.bmw.com.fullint1
    ${passw_Locator} =    get webelement    xpath=//input[@id="password"]
    input text    ${passw_Locator}    $8508730142Lalith
    click button    xpath=//input[@id="Login"]

