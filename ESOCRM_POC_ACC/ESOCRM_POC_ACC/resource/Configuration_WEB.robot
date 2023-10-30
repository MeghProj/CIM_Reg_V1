*** Variables ***
# ------------------------------------
# -- ESO CRM WAVE2 market vise URL's
# ------------------------------------
${PROTOCOL} =           https://


&{Base_Url} =
...    ESOSF_AT=${PROTOCOL}bmw-hf-eso-xx--esohfintat.sandbox.my.salesforce.com
...    ESOSF_CH=${PROTOCOL}rsp-dev-xx--esointch.sandbox.lightning.force.com/
...    ESOSF_FR=${PROTOCOL}bmw-hf-eso-xx--esohfintfr.sandbox.my.salesforce.com
...    ESOSF_ES=${PROTOCOL}bmw-hf-eso-xx--esohfintes.sandbox.my.salesforce.com
...    ESOSF_PT=${PROTOCOL}bmw-hf-eso-xx--esohfintpt.sandbox.my.salesforce.com
...    ESOSF_NO=${PROTOCOL}bmw-hf-eso-xx--esohfintno.sandbox.my.salesforce.com
...    ESOSF_FI=${PROTOCOL}bmw-hf-eso-xx--esohfintfi.sandbox.my.salesforce.com
...    ESOSF_GB=${PROTOCOL}bmw-hf-eso-xx--esohfintgb.sandbox.my.salesforce.com
...    ESOSF_IE=${PROTOCOL}bmw-hf-eso-xx--esohfintie.sandbox.my.salesforce.com
...    ESOSF_PL=${PROTOCOL}rsp-dev-xx--esointpl.sandbox.my.salesforce.com
...    ESOSF_DE=${PROTOCOL}rsp-dev-xx--esointde.sandbox.my.salesforce.com


&{Acccr_Url} =
...    ESOAC_PL=lightning/o/Account/list?filterName=Recent


&{Onepage_Url} =
...    MINI_AT=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=AT&language=de&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_CH=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=CH&language=de&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_FR=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=FR&language=fr&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_ES=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=ES&language=es&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_PT=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=PT&language=pt&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_NO=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=NO&language=no&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_FI=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=FI&language=fi&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_GB=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=GB&language=en&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_IE=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=IE&language=en&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_DE=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=DE&language=de&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_IT=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=IT&language=it&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_PL=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=PL&language=pl&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
...    MINI_SE=${PROTOCOL}customer-i.bmwgroup.com/oneid/#/register?client=miniwebcom&country=SE&language=sv&brand=mini&scope=svds%20remote_services%20vehicle_data%20authenticate_user%20smacc%20fupo%20cesim%20perseus&response_type=code&state=eyJyZXR1cm5VUkwiOiJodHRwczovL3d3dy5taW5pLmRlL2RlX0RFL2hvbWUuaHRtbCIsImRhdGEiOnsibGFuZ3VhZ2UiOiJkZSIsImNvdW50cnkiOiJkZSIsImJyYW5kIjoibWluaSJ9fQ%3D%3D&email=julia.krieg%40bmw.de&epaas_consenttoken=1874620d6a4717083750c2dcd18000000030ZGVfREV8ZHMyfm1pbmktZGU&redirect_uri=https%253A%252F%252Fwww.mini.de%252Fbin%252Fpublic%252Fbusiness%252Fformgcdm%252Fgcdmredirect-servlet
# ------------------------------------
# -- Credentials
# ------------------------------------
&{Username} =
...    ESOSF_AT=at.happybdcagent@bmw.hf.eso.xx.esohfintat
...    ESOSF_CH=happybdcagent@bmw.hf.eso.xx.esohfintch
...    ESOSF_FR=fr.happybdcagent@bmw.hf.eso.xx.esohfintfr
...    ESOSF_ES=es.happybdcagent@bmw.hf.eso.xx.esohfintes
...    ESOSF_PT=pt.happybdcagent@bmw.hf.eso.xx.esohfintpt
...    ESOSF_NO=no.happybdcagent@bmw.hf.eso.xx.esohfintno
...    ESOSF_FI=fi.happybdcagent@bmw.hf.eso.xx.esohfintfi
...    ESOSF_GB=gb.happybdcagent@bmw.hf.eso.xx.esohfintgb
...    ESOSF_IE=ie.happybdcagent@bmw.hf.eso.xx.esohfintie
...    ESOSF_DE=de.happybdcagent@bmw.eso.dev.xx.esointde
...    ESOSF_PL=pl.happybdcagent@bmw.eso.dev.xx.esointpl

&{Crediantials} =
...    ESOSF_AT=HappyAT01Agent2024
...    ESOSF_CH=HappyCustomer2024
...    ESOSF_FR=HappyCustomer2023
...    ESOSF_ES=HappyES01Agent2023
...    ESOSF_PT=HappyPT01Agent2023
...    ESOSF_NO=HappyNO01Agent2023
...    ESOSF_FI=HappyCustomer2023
...    ESOSF_GB=HappyGB01Agent2023
...    ESOSF_IE=HappyIE01Agent2023
...    ESOSF_DE=Happycustom2023
...    ESOSF_PL=HappyPL01Agent2023

&{END_POINT} =
...    ACC=lightning.force.com/lightning/o/Account/list?filterName=Recent

&{registration} =
...    AT=Jetzt registrieren
...    CH=Jetzt registrieren
...    FR=S'inscrire
...    ES=Registrar ID de MINI
...    PT=Registar
...    NO=Registrere nå
...    FI=Rekisteröidy nyt
...    GB=Register now
...    IE=Register now
...    DE=Jetzt registrieren
...    IT=
...    PL=
...    SE=