*** Settings ***
Documentation  Enables the provision of test data
Library    String
Library    Collections

Library  ./../lib/ConfigReader.py  "Determination of test data (config)"  WITH NAME  config
Resource    Config_ESO_WEB.robot
*** Keywords ***


Get test case data
    [Documentation]    Retrieving test and user data
    [Arguments]    ${TestDataPath}
    run keyword if    '${TestDataPath}' != ''   Get test data    ${TestDataPath}

Get test data
    [Documentation]    Retrieving the test case data
    [Arguments]    ${TestDataPath}
    &{TESTDATA} =    DataManager.Get CONFIG Test data    ${TestDataPath}
    set suite variable    &{TESTDATA}

Get address data
    [Documentation]    Retrieving the compare values
    [Arguments]    ${TestDataPath}
    &{ADRDATA} =    DataManager.Get CONFIG Test data    ${TestDataPath}
    set suite variable    &{ADRDATA}

Get CONFIG Test data
    [Arguments]  ${FilePathCONFIG}
    ${CONFIGData} =  config.get_cfg_data  ${FilePathCONFIG}
    [Return]  ${CONFIGData}












#Get test case data
#    [Documentation]    Retrieving test and user data
#    [Arguments]    ${TestDataPath}
#    run keyword if    '${TestDataPath}' != ''    Get address data   ${TestDataPath}
#
#Get address data
#    [Documentation]
#    [Arguments]    ${TestDataPath}
#    &{ADRDATA} =    DataManager.Get CONFIG Test data    ${TestDataPath}
#    set suite variable    &{ADRDATA}

#Get account data
#    [Documentation]    Retrieving the user data
#    [Arguments]    ${UserDataPath}
#    &{ACCDATA} =    DataManager.Get CONFIG Test data    ${UserDataPath}
#    set suite variable    &{ACCDATA}

#Get CONFIG Test data
#    [Arguments]  ${FilePathCONFIG}
#    ${CONFIGData} =  config.get_cfg_data  ${FilePathCONFIG}
#    [Return]  ${CONFIGData}
#
Get an address set
    [Arguments]    ${testdata}
    ${country} =    get from dictionary    ${ADRDATA.${testdata}}    country
    log    ${country}
    Get test address data    ${TD_ADR.${country}}
    ${NMBR} =    evaluate    random.randint(1, 5)
    ${Profile} =    format string    ${country}_SET_${NMBR}
    [Return]    ${ADRDATA_TC.${Profile}}
#
Get test address data
    [Documentation]
    [Arguments]    ${TestDataPath}
    &{ADRDATA_TC} =    DataManager.Get CONFIG Test data    ${TestDataPath}
    set test variable    &{ADRDATA_TC}
#
Get an account data set
    [Arguments]    ${testdata}  ${index}
    ${country} =    get from dictionary    ${ADRDATA.${testdata}}    country
    Get account data set    ${TD_ACC.${country}}
    ${Profile} =    format string    ACC_SET_${index}
    [Return]    ${ACCDATA.${Profile}}
#
Get account data set
    [Documentation]    Retrieving the user data
    [Arguments]    ${AccDataPath}
    &{ACCDATA} =    DataManager.Get CONFIG Test data    ${AccDataPath}
    set suite variable    &{ACCDATA}