*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    NavConfig/Configuration_WEB.robot
Resource    Config_ESO_WEB.robot
Resource    DataConfig/Account_Locators.robot
Resource    DataManager.robot
Resource    Functions_Web.robot
Resource    Validations_Web.robot
Library    ../Lib/random_names.py

*** Variables ***


*** Keywords ***

Create a new account in SF
    [Arguments]    ${address_data}    ${fir_nm}     ${lst_nm}   ${System}
#    FOR    ${index}    IN RANGE    1    3
#        ${ACC_DATA} =    Get an account data set     ${address_data}    ${index}
        Navigate to recent account page    ${address_data}  ${System}
        Navigate to account creation page   ${System}
        ${firstname} =    First    ${fir_nm}
        ${lastname} =    Last    ${lst_nm}
        ${phnum} =      Set email for account    ${firstname}    ${lastname}    ${System}
        ${email} =      set phone for account   ${System}
        Set firstname for account    ${firstname}   ${System}
        Set lastname for account    ${lastname}     ${System}
#        Scroll until the bottom of account creation page
        sleep    3s
        Set preferred address   ${System}
#        Wait Until Keyword Succeeds    10x    3000ms    Search and set the address    ${address_data}   ${System}
    sleep    40s
        Save the account    ${System}
        sleep    40s
#    END
    Validate Created account in SF      ${ADR_1}    ${firstname}    ${lastname}     ${phnum}    ${email}    ${System}


Create a new account in Carmen
    [Arguments]    ${address_data}    ${fir_nm}     ${lst_nm}   ${System}
    FOR    ${index}    IN RANGE    1    3
#        ${ACC_DATA} =    Get an account data set     ${address_data}    ${index}
        Navigate to account page    ${address_data}  ${System}
        Navigate to account creation page
        ${firstname} =    First    ${fir_nm}
        ${lastname} =    Last    ${lst_nm}
        Set email for account    ${firstname}    ${lastname}
        set phone for account
        Set firstname for account    ${firstname}
        Set lastname for account    ${lastname}
        Scroll until the bottom of account creation page
        sleep    3s
        Set preferred address
        Wait Until Keyword Succeeds    10x    3000ms    Search and set the address    ${address_data}
#    sleep    40s
        Save the account
        sleep    10s
    END

Validate Created account in SF
    [Arguments]     ${ADR_1}    ${firstname}    ${lastname}     ${phnum}    ${email}    ${System}
    ${name} =   ${firstname} ${lastname}
    Validate SF data    ${name}    ${${System}_ACC_LOC.FSTLST_NM}      name
    Validate SF data    ${phnum}    ${${System}_ACC_LOC.MOB}    phone number
    Validate SF data    ${email}    ${${System}_ACC_LOC.EMAIL}    private email
    Validate SF data    Private    ${${System}_ACC_LOC.PREF_ADR}    preferred address


#
#Navigate to recent account page
#    [Arguments]    ${address_data}
#    ${country} =    get from dictionary    ${ADRDATA.${address_data}}    country
#    ${home_url} =   Set Variable       ${Base_Url.ESOSF_${country}}
#    ${pre_srt} =	set variable    ${Acccr_Url.ESOAC_${country}}
#    ${new_url} =    set variable    ${home_url}/${pre_srt}
#    Log    ${new_url}
#    go to    ${new_url}
#
#Navigate to account creation page
#    sleep    10s
#    click element    xpath=${ESO_ACC_LOC.ACC_NEW}
#    wait until element is visible    xpath=${ESO_ACC_LOC.NEW_PER}    10s
#    click element    xpath=${ESO_ACC_LOC.NEW_PER}
#    wait until element is visible    xpath=${ESO_ACC_LOC.ACC_NEXT}    10s
#    click element    xpath=${ESO_ACC_LOC.ACC_NEXT}
#    sleep    5s
#    wait until element is visible    xpath=${ESO_ACC_LOC.MOB}    10s
##    sleep    5s
#
#Set email for account
#    [Arguments]    ${firstname}    ${lastname}
#    ${email} =    set variable       ${firstname}.${lastname}_sogsun@mailinator.com
#    ${email_lwr} =    convert to lower case    ${email}
#    input text    xpath=${ESO_ACC_LOC.EMAIL}    ${email_lwr}
#
#set phone for account
#    ${num} =    generate random string  9  [NUMBERS]
#    ${phn} =    set variable    +49 30 ${num}
#    input text    xpath=${ESO_ACC_LOC.MOB}    ${phn}
#
#Set firstname for account
#    [Arguments]    ${first_name}
#    scroll element into view    xpath=${ESO_ACC_LOC.LST_NM}
#    input text    xpath=${ESO_ACC_LOC.FST_NM}    ${first_name}
#
#Set lastname for account
#    [Arguments]    ${last_name}
#    input text    xpath=${ESO_ACC_LOC.LST_NM}    ${last_name}
#
#Scroll until the bottom of account creation page
#    Press Keys    xpath=${ESO_ACC_LOC.LST_NM}     TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB
#    ...    TAB    TAB    TAB    TAB    TAB    TAB
#
#Set preferred address
#    sleep  2s
#    Press Keys    xpath=${ESO_ACC_LOC.PREF_ADR}     Private   ENTER
#
#Search and set the address
#    [Arguments]    ${addressdata}
#    ${per_str} =    Get an address set    ${addressdata}
#    Clear Element Text    xpath=${ESO_ACC_LOC.SER_ADR}
#    Press Keys    xpath=${ESO_ACC_LOC.SER_ADR}    ${per_str.street_given}
#    sleep    4s
#    ${NMBR} =    evaluate    random.randint(1, 2)
##    @{pre_srt} =	split string from right    ${per_str.street_given}
##    ${sn_nbr} =    generate random string    1    [NUMBERS]
#    sleep    10s
#    Press Keys    xpath=(//span[contains(text(),'${per_str.street_given}')])[${NMBR}]    ENTER
#    sleep   10s
#
#Save the account
#    click element    xpath=${ESO_ACC_LOC.ACC_SAV}