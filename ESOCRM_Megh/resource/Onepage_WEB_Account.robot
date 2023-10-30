*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    NavConfig/Configuration_WEB.robot
Resource    Config_ESO_WEB.robot
Resource    DataConfig/Account_Locators.robot
#Resource    Onepage_Locators.robot
#Resource    Mailinator_Locators.robot
Resource    DataManager.robot
Resource    Functions_Web.robot
Library    ../Lib/random_names.py
Library    ../Lib/xlswriter.py

*** Variables ***
${email}
&{AccDict} =


*** Keywords ***

Regestering a new account in onepage
    Navigate to account creation page
    Set firstname for account





Navigate to onepage
    [Arguments]    ${cnt}
    ${country} =    get from dictionary    ${ADRDATA.${cnt}}    country
    go to    ${Onepage_Url.MINI_${country}}
    wait until element is visible    //input[@id='firstName']    30s














#Create a new account in onepage
#    [Arguments]    ${address_data}    ${fir_nm}  ${lst_nm}
#    FOR    ${index}    IN RANGE    1   6
#        ${ACC_DATA} =    Get an account data set     ${address_data}    ${index}
#        Navigate to onepage    ${address_data}
#        Enter mandatory details and submit    ${ACC_DATA}    ${address_data}    ${fir_nm}    ${lst_nm}
#        Wait Until Keyword Succeeds    10x    3000ms    Check mail and verify
#    END
#    ${country} =    get from dictionary    ${ADRDATA.${address_data}}    country
#    ${excelpath} =    set variable    ${ACC_MRDATA.${country}}
#    load_in_excel    ${excelpath}    ${AccDict}
#
#Navigate to onepage
#    [Arguments]    ${cnt}
#    ${country} =    get from dictionary    ${ADRDATA.${cnt}}    country
#    go to    ${Onepage_Url.MINI_${country}}
#    wait until element is visible    //input[@id='firstName']    30s
#
#
#Enter mandatory details and submit
#    [Arguments]    ${accountdata}    ${cnt}    ${fir_nm}    ${lst_nm}
#    ${country} =    get from dictionary    ${ADRDATA.${cnt}}    country
#    ${lwr_cntry} =    convert to lower case    ${country}
#    click element    //input[@id='custom-select-plus-salutation']
#    sleep    2s
#    ${saluta} =    set variable    ${accountdata.salutation_${lwr_cntry}}
#    Mouse Down    //div[@id='${saluta}']
#    click element    //div[@id='${saluta}']
#    sleep    2s
#    ${firstname} =    First    ${fir_nm}
#    Input Text    //input[@id='firstName']    ${firstname}     #${accountdata.firstname}
#    ${lastname} =    Last    ${lst_nm}
#    Input Text    //input[@id='lastName']    ${lastname}    #${accountdata.lastname}
#    ${email} =    set variable       ${firstname}.${lastname}_SOG@mailinator.com                       #${accountdata.email}
#    set test variable    ${email}
#    ${username} =    set variable    ${email}
#    set test variable    ${username}
#    clear element text    //input[@id='email']
#    sleep    2s
#    Input Text    //input[@id='email']    ${username}
#    ${password} =    set variable    Test@12345
#    set test variable    ${password}
#    Input Text    //input[@id='password']    ${password}
#    click element    //span[@class='checkbox__mark __m']
#    sleep    10s
#    Click on register    ${cnt}
#    ${AccItems} =    create list    ${firstname}    ${lastname}    ${email}
#    ${length_c} =    get length    ${AccDict}
#    set to dictionary    ${AccDict}    '${${length_c} + 1}'=${AccItems}
#    log    ${AccDict}
#    sleep    10s
#
#Check mail and verify
#    Go To    https://www.mailinator.com/v4/public/inboxes.jsp?to=${email}
#    sleep    5s
#    click element    //td[@class='ng-binding'][1]
#    sleep    2s
#    click element    //a[@id='pills-links-tab']
#    sleep    5s
#    click element    //a[contains(text(),'https://customer-i.bmwgroup.com/oneid/#/activate?t')]
#    sleep    10s
#
#Click on register
#    [Arguments]    ${cnt}
#    ${country} =    get from dictionary    ${ADRDATA.${cnt}}    country
#    ${regi} =    set variable    ${registration.${country}}
#    Click Button    //button[contains(text(),'${regi}')]
#
#Add phone no in onepage
#    sleep    10s
#    click element    (//div[@class='add-label'])[1]
#    sleep    5s
#    ${phn_no_str} =    generate random string    4    [NUMBERS]
#    ${phn_no} =    set variable    64846${phn_no_str}
#    input text    //input[@id='phone-PRIVATE-TEL']    ${phn_no}
#    click button    //button[contains(text(),'Zastosuj')]
#    sleep    2s
#    click button    //button[contains(text(),'Aktualizuj profil')]
#
#Add address fields in account via Onepage
#    [Arguments]    ${adr_set}
#    ${str_no} =    Generate new street number    ${adr_set}
#    sleep   10s
#    click element    (//div[@class='add-icon __m'])[5]          #(//div[@class='add-label'])[5]
#    sleep    5s
#    input text    //input[@id='street']    ${adr_set.street_given}
#    input text    //input[@id='houseNumber']    ${str_no}
#    input text    //input[@id='postalCode']    ${adr_set.zipcode}
#    input text    //input[@id='city']    ${adr_set.city_given}
#    click element    //span[@class='checkbox__mark __m']
#    click button    //button[contains(text(),'Dodaj nowy adres')]
#    sleep    3s
#    click button    //button[contains(text(),'Zapisz proponowany adres')]
#    sleep    2s
#    click button    //button[contains(text(),'Aktualizuj profil')]
#
#Get an address set
#    [Arguments]    ${FilePathCONFIG}    ${country}
#    &{ADRDATA} =  config.get_cfg_data  ${FilePathCONFIG}
#    ${NMBR} =    evaluate    random.randint(1, 14)
#    ${Profile} =    format string    ${country}_SET_${NMBR}
#    [Return]    ${ADRDATA.${Profile}}
#
#Generate new street number
#    [Arguments]    ${adr_set}
#    ${int_start} =    convert to integer    ${adr_set.range_start}
#    ${int_end} =    convert to integer    ${adr_set.range_end}
#    ${int_housenr} =    evaluate    random.randint(${int_start}, ${int_end})    modules=random
#    ${new_housenr} =    convert to string    ${int_housenr}
#    [Return]    ${new_housenr}