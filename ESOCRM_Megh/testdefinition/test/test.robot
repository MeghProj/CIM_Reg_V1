*** Settings ***
Library    SeleniumLibrary
Resource    resourse.robot
Resource    ../../resource/Common_WEB.robot


Test Setup    I open the browser    firefox
#Test Teardown    I close the browser

*** Variables ***


*** Test Cases ***

fullint1us test
    [Documentation]    test cic
    Login into salesforce
    sleep    10s
    go to    https://wht-pool--fullint1.sandbox.lightning.force.com/lightning/r/Case/5003L000008RxpJQAS/view
    sleep    30s
    click element    //a[@title='In Progress']
    ${text} =    get text    (//span[contains(text(),'Brand')])[1]/parent::div/following-sibling::div/child::span/child::slot[1]/lightning-formatted-text
#    ${text} =    get text    //span[@title="BMW CIC"]
##    mouse down    (//img[@title="User"])[1]/parent::span
##    sleep    2s
##    mouse down    (//span[@title="Activities"])[1]/parent::span
#    press keys    //span[@title="BMW CIC"]    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB
#    ...    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB
#    ...    TAB    TAB    TAB    TAB    TAB      #TAB    TAB    TAB    TAB
##    ...    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB    TAB
##    ...    TAB    TAB    TAB    ENTER
#    sleep    2s
##    click element    //span[contains(text(),'Case Comments')]
##    scroll element into view    //span[contains(text(),'In Progress')]
##    click element    //span[contains(text(),'Case Comments')]
#    scroll element into view    (//span[contains(text(),'Color Description')])[1]
#    ${text} =    get text    //p[@title="VIN Long"]/parent::div/child::p/child::slot/lightning-formatted-text
#    ${text} =    get text    (//span[contains(text(),'VIN Long')])[8]/parent::div/following-sibling::div/child::span/child::slot[1]/lightning-formatted-text
#    ${text} =    get text    (//p[contains(text(),'Queue')]/parent::div/child::p/child::slot/lightning-formatted-text)[2]
#    click button    //button[@title="Edit BMW Unit"]
#    press keys    //span[@title="BMW CIC"]    TAB    TAB    TAB    TAB    TAB    TAB    TAB
#    ${text} =    get text    //span[contains(text(),'Milestones')]
##    ${text} =    get text    //div[contains(text(),'Person Account')]/parent::h1/child::slot/lightning-formatted-name
#    ${text} =    get text    (//span[contains(text(),'Account Name')])[7]/parent::div/following-sibling::div/child::span/span
#    (//span[contains(text(),'Account Name')])[7]
#    ${text} =    get text    (//a[contains(text(),'Account Details')])[2]
#    click element    (//flexipage-record-home-scrollable-column[contains(@id,'middleColumn')])[13]
#//h3[contains(text(),'Suggested Articles')]
#middleColumn-114

