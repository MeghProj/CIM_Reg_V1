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


Navigate to recent account page
    [Arguments]    ${address_data}  ${System}
    ${country} =    get from dictionary    ${ADRDATA.${address_data}}    country
    ${home_url} =   Set Variable       ${Base_Url.${System}SF_${country}}
    ${pre_srt} =	set variable    ${Acccr_Url.${System}AC_${country}}
    ${new_url} =    set variable    ${home_url}/${pre_srt}
    Log    ${new_url}
    go to    ${new_url}

Navigate to account creation page
    [Arguments]     ${System}
    sleep    10s
    click element    xpath=${${System}_ACCCR_LOC.ACC_NEW}
    wait until element is visible    xpath=${${System}_ACCCR_LOC.NEW_PER}    10s
    click element    xpath=${${System}_ACCCR_LOC.NEW_PER}
    wait until element is visible    xpath=${${System}_ACCCR_LOC.ACC_NEXT}    10s
    click element    xpath=${${System}_ACCCR_LOC.ACC_NEXT}
    sleep    5s
    wait until element is visible    xpath=${${System}_ACCCR_LOC.MOB}    10s
#    sleep    5s

Set email for account
    [Arguments]    ${firstname}    ${lastname}      ${System}
    ${email} =    set variable       ${firstname}.${lastname}_@mailinator.com
    ${email_lwr} =    convert to lower case    ${email}
    input text    xpath=${${System}_ACCCR_LOC.EMAIL}    ${email_lwr}
    [Return]    ${email_lwr}

set phone for account
    [Arguments]      ${System}
    ${num} =    generate random string  9  [NUMBERS]
    ${phn} =    set variable    +4930${num}
    input text    xpath=${${System}_ACCCR_LOC.MOB}    ${phn}
    [RETURN]      ${phn}

Set firstname for account
    [Arguments]    ${first_name}    ${System}
    scroll element into view    xpath=${${System}_ACCCR_LOC.LST_NM}
    input text    xpath=${${System}_ACCCR_LOC.FST_NM}    ${first_name}

Set lastname for account
    [Arguments]    ${last_name}     ${System}
    input text    xpath=${${System}_ACCCR_LOC.LST_NM}    ${last_name}

Scroll until the bottom of account creation page
    Press Keys    xpath=${ESO_ACC_LOC.LST_NM}     TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB
    ...    TAB    TAB    TAB    TAB    TAB    TAB

Set preferred address
    [Arguments]      ${System}
    sleep  2s
    Press Keys    xpath=${${System}_ACCCR_LOC.PREF_ADR}     Private   ENTER

Search and set the address
    [Arguments]    ${addressdata}       ${System}
    ${per_str} =    Get an address set    ${addressdata}
    Clear Element Text    xpath=${${System}_ACCCR_LOC.SER_ADR}
    Press Keys    xpath=${${System}_ACCCR_LOC.SER_ADR}    ${per_str.street_given}
    sleep    4s
    ${NMBR} =    evaluate    random.randint(1, 2)
#    @{pre_srt} =	split string from right    ${per_str.street_given}
#    ${sn_nbr} =    generate random string    1    [NUMBERS]
    sleep    10s
    Press Keys    xpath=(//span[contains(text(),'${per_str.street_given}')])[${NMBR}]    ENTER
    sleep   10s

Save the account
    [Arguments]      ${System}
    click element    xpath=${${System}_ACCCR_LOC.ACC_SAV}

Navigate to account page
    [Arguments]     ${address_data}  ${System}
    Click Element    xpath=//a[contains(text(),'Firmen')]

Close all ESOCRM tabs
#    ${element_count} =    Get Element Count    xpath=//div[@class="close slds-col--bump-left slds-p-left--none slds-context-bar__icon-action "]/button

    FOR    ${index}    IN RANGE    9999    # A large number to ensure the loop can run indefinitely
        ${element_count} =    Get Element Count    xpath=//div[@class="close slds-col--bump-left slds-p-left--none slds-context-bar__icon-action "]/button
        Exit For Loop If    ${element_count} == 0
        Click Element    xpath=//div[@class="close slds-col--bump-left slds-p-left--none slds-context-bar__icon-action "]/button
    # Rest of the test case continues here
    END