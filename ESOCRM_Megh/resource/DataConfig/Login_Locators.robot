*** Variables ***
# ------------------------------------
# -- Locators to login into ESO
# ------------------------------------
&{ESO_LOGIN} =
...    USER=//input[@id="username"]
...    PASSWORD=//input[@id="password"]
...    LOGIN=//input[@id="Login"]



# ------------------------------------
# -- Locators to login into Carmen
# ------------------------------------
&{CAR_LOGIN} =
...    USER=//input[@id="idToken2"]
...    PASSWORD=//input[@id="idToken3"]
...    LOGIN=//input[@id="idToken4_0"]



# ------------------------------------
# -- Locators to login into WH
# ------------------------------------
&{WH_LOGIN} =
...    USER=//input[@id="username"]
...    PASSWORD=//input[@id="password"]
...    LOGIN=//input[@id="Login"]