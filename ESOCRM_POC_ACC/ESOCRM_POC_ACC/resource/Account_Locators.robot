*** Variables ***
# ------------------------------------
# -- Locators to login into ESO
# ------------------------------------
&{ESO_LOC} =
...    USER=//input[@id="username"]
...    PASSWORD=//input[@id="password"]
...    LOGIN=//input[@id="Login"]

# ------------------------------------
# -- Locators to create the account
# ------------------------------------
&{ESO_ACC_LOC} =
...    ACC_NEW=//div[contains(text(),'New')]
...    NEW_PER=//h1[contains(text(),'Person Account Private')]
...    ACC_NEXT=//button[contains(text(),'Next')]
...    MOB=//input[@name="PersonMobilePhone"]
...    EMAIL=//input[@name="Email"]
...    FST_NM=//input[@name="FirstName"]
...    LST_NM=//input[@name="LastName"]
...    PREF_ADR=//label[contains(text(),'Preferred Address')]/parent::div/descendant::div[4]/child::button/span
...    SER_ADR=//label[contains(text(),'Address Search')]/parent::span/following::div[2]/descendant::input[1]
...    ACC_SAV=//button[contains(text(),'Save')]
