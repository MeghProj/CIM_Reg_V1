*** Variables ***
# ------------------------------------
# -- Address Data
# ------------------------------------

${TD_BASE_DIR_ADR} =    Testdata/Address

&{TD_ADR} =
...    AT=${TD_BASE_DIR_ADR}/AT/Addresssets_AT.cfg
...    CH=${TD_BASE_DIR_ADR}/CH/Addresssets_CH.cfg
...    ES=${TD_BASE_DIR_ADR}/ES/Addresssets_ES.cfg
...    IT=${TD_BASE_DIR_ADR}/IT/Addresssets_IT.cfg
...    FI=${TD_BASE_DIR_ADR}/FI/Addresssets_FI.cfg
...    FR=${TD_BASE_DIR_ADR}/FR/Addresssets_FR.cfg
...    GB=${TD_BASE_DIR_ADR}/GB/Addresssets_GB.cfg
...    IE=${TD_BASE_DIR_ADR}/IE/Addresssets_IE.cfg
...    NO=${TD_BASE_DIR_ADR}/NO/Addresssets_NO.cfg
...    PT=${TD_BASE_DIR_ADR}/PT/Addresssets_PT.cfg
...    DE=${TD_BASE_DIR_ADR}/DE/Addresssets_DE.cfg
...    PL=${TD_BASE_DIR_ADR}/PL/Addresssets_PL.cfg
...    SE=${TD_BASE_DIR_ADR}/SE/Addresssets_SE.cfg

# ------------------------------------
# -- Test Data
# ------------------------------------

${TD_BASE_DIR_ADR} =    Testdata/Onepage_TD

&{TD_ACC} =
...    AT=${TD_BASE_DIR_ADR}/Test_data_AT.cfg
...    CH=${TD_BASE_DIR_ADR}/Test_data_CH.cfg
...    ES=${TD_BASE_DIR_ADR}/Test_data_ES.cfg
...    IT=${TD_BASE_DIR_ADR}/Test_data_IT.cfg
...    FI=${TD_BASE_DIR_ADR}/Test_data_FI.cfg
...    FR=${TD_BASE_DIR_ADR}/Test_data_FR.cfg
...    GB=${TD_BASE_DIR_ADR}/Test_data_GB.cfg
...    IE=${TD_BASE_DIR_ADR}/Test_data_IE.cfg
...    NO=${TD_BASE_DIR_ADR}/Test_data_NO.cfg
...    PT=${TD_BASE_DIR_ADR}/Test_data_PT.cfg
...    DE=${TD_BASE_DIR_ADR}/Test_data_DE.cfg
...    PL=${TD_BASE_DIR_ADR}/Test_data_PL.cfg
...    SE=${TD_BASE_DIR_ADR}/Test_data_SE.cfg


# ------------------------------------
# -- First name + Lastname collections
# ------------------------------------

&{TD_NAMES} =
...    FIRST=Testdata/Names/FirstNames.txt
...    LAST=Testdata/Names/LastNames.txt









# ------------------------------------
# -- Test Address Data
# ------------------------------------

${TD_BASE_DIR_ADR} =    Testdata/Address

&{TD_ADR} =
...    AT=${TD_BASE_DIR_ADR}/AT/Addresssets_AT.cfg
...    CH=${TD_BASE_DIR_ADR}/CH/Addresssets_CH.cfg
...    ES=${TD_BASE_DIR_ADR}/ES/Addresssets_ES.cfg
...    IT=${TD_BASE_DIR_ADR}/IT/Addresssets_IT.cfg
...    FI=${TD_BASE_DIR_ADR}/FI/Addresssets_FI.cfg
...    FR=${TD_BASE_DIR_ADR}/FR/Addresssets_FR.cfg
...    GB=${TD_BASE_DIR_ADR}/GB/Addresssets_GB.cfg
...    IE=${TD_BASE_DIR_ADR}/IE/Addresssets_IE.cfg
...    NO=${TD_BASE_DIR_ADR}/NO/Addresssets_NO.cfg
...    PT=${TD_BASE_DIR_ADR}/PT/Addresssets_PT.cfg
...    DE=${TD_BASE_DIR_ADR}/DE/Addresssets_DE.cfg
...    PL=${TD_BASE_DIR_ADR}/PL/Addresssets_PL.cfg
...    SE=${TD_BASE_DIR_ADR}/SE/Addresssets_SE.cfg

#
#
## ------------------------------------
## -- Account Data
## ------------------------------------
#
#&{TD_ACC} =
#...    ESO=Testdata/Account_data/Account_data.cfg
#
## ------------------------------------
## -- names Data
## ------------------------------------
#
#&{TD_NAMES} =
#...    FIRST=Testdata/Names/FirstNames.txt
#...    LAST=Testdata/Names/LastNames.txt
#
#
## ------------------------------------
## -- Test Data excel
## ------------------------------------
#
#${TD_BASE} =    Results
#
#&{ACC_MRDATA} =
#...    AT=${TD_BASE}/Acc_AT.xlsx
#...    CH=${TD_BASE}/Acc_CH.xlsx
#...    ES=${TD_BASE}/Acc_ES.xlsx
#...    IT=${TD_BASE}/Acc_IT.xlsx
#...    FI=${TD_BASE}/Acc_FI.xlsx
#...    FR=${TD_BASE}/Acc_FR.xlsx
#...    GB=${TD_BASE}/Acc_GB.xlsx
#...    IE=${TD_BASE}/Acc_IE.xlsx
#...    NO=${TD_BASE}/Acc_NO.xlsx
#...    PT=${TD_BASE}/Acc_PT.xlsx
#...    DE=${TD_BASE}/Acc_DE.xlsx
#...    PL=${TD_BASE}/Acc_PL.xlsx
#...    SE=${TD_BASE}/Acc_SE.xlsx