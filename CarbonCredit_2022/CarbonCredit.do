import excel "C:\Users\pongs\Desktop\Database for Re\v7 Prototype\Database_v8_TB.xlsx", sheet("Adjusted") firstrow

gen quarterly = quarterly( QY , "yq")

format quarterly %tq

encode Country, gen(country_code)

tsset country_code quarterly

corr ln_CO2Price ln_PPI ln_RGDP Temp2 ln_PM25

reg ln_CO2Price ln_PPI ln_RGDP Temp2 ln_PM25

xtreg ln_CO2Price ln_PPI ln_RGDP Temp2 ln_PM25, fe

estimates store fixed

xtreg ln_CO2Price ln_PPI ln_RGDP Temp2 ln_PM25, re

estimates store random

xttest0

hausman fixed random 

xtreg ln_CO2Price ln_PPI ln_RGDP Temp2 ln_PM25, fe cluster(country_code)

xtreg ln_CO2Price ln_PPI ln_RGDP Temp2 ln_PM25, fe robust

ssc install xttest2

xttest2

ssc install xttest3

xttest3

reg ln_CO2Price L(1/4).ln_PPI L(1/4)ln_RGDP L(1/4)Temp2 L(1/4)ln_PM25

reg ln_CO2Price L(1/4).ln_CO2Price L(1/4).ln_PPI L(1/4)ln_RGDP L(1/4)Temp2 L(1/4)ln_PM25
