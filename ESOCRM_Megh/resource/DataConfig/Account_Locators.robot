*** Variables ***

# ------------------------------------
# -- Locators to create the account
# ------------------------------------
&{ESO_ACCCR_LOC} =
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


# ------------------------------------
# -- Locators to the account
# ------------------------------------
&{ESO_ACC_LOC} =
...    MOB=//span[text()='Mobile (Private)']/parent::div/following-sibling::div[1]/span//a/span[2]
...    EMAIL=//span[text()='Email (Private)']/parent::div/following-sibling::div//a[@class="emailuiFormattedEmail"]
...    FSTLST_NM=//lightning-formatted-name[@data-output-element-id='output-field']
...    PREF_ADR=//span[text()='Preferred Address']/parent::div/following-sibling::div[1]//lightning-formatted-text
...    SER_ADR=



# ------------------------------------
# -- Locators to create the account
# ------------------------------------
&{WH_ACCCR_LOC} =
...    ACC_NEW=//div[contains(text(),'New')]
...    NEW_PER=//span[text()='Person Account']
...    ACC_NEXT=//span[contains(text(),'Next')]
...    MOB=//input[@name="PersonMobilePhone"]
...    EMAIL=//input[@name="PersonEmail"]
...    FST_NM=//input[@name="firstName"]
...    LST_NM=//input[@name="lastName"]
...    PREF_ADR=//span[text()='Private']
...    STRT_ADR=//label[contains(text(),'Private Street')]/parent::lightning-textarea/div/textarea[@name="street"]
...    PSTCD_ADR=//label[contains(text(),'Private Postal Code')]/parent::div//input[@name="postalCode"]
...    CITY_ADR=//label[contains(text(),'Private City')]/parent::div//input[@name="city"]
...    SER_ADR=//label[contains(text(),'Address Search')]/parent::span/following::div[2]/descendant::input[1]
...    ACC_SAV=//button[contains(text(),'Save')]
