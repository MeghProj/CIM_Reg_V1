#*** Variables ***
## ------------------------------------
## -- Locators to Onepage
## ------------------------------------
#&{ONEPAGE_LOC} =
#...    FIRSTNAME=//input[@id='firstName']
#...    LASTNAME=//input[@id='lastName']
#...    SAL_DROP=//input[@id='custom-select-plus-salutation']
#...    EMAIL=//input[@id='email']
#...    PASSWORD=
#...    CHECK=
#
#
#
#
#
#    click element    //input[@id='custom-select-plus-salutation']
#    ${saluta} =    set variable    ${accountdata.salutation_${lwr_cntry}}
##    Mouse Down    //div[@id='${saluta}']
##    click element    //div[@id='${saluta}']
#    sleep    5s
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
#    ${AccItems} =    create list    ${firstname}    ${lastname}    ${email}
#    ${length_c} =    get length    ${AccDict}
#    set to dictionary    ${AccDict}    '${${length_c} + 1}'=${AccItems}
#    log    ${AccDict}
#    click element    //span[@class='checkbox__mark __m']
#    Click on register    ${cnt}
#    sleep    10s