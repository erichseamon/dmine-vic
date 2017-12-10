#!/bin/sh
#
# NAME: agmesh-subset.sh
# PURPOSE: Bash script that is called by R for subsetting climatic datasets
# AUTHOR: Erich Seamon
# INSTITUTION: University of Idaho
# DATE:  07/15/2017
#

#yearspan=(1979, 1981, 1982, 1983, 1985, 1986, 1987, 1989, 1990, 1991, 1993, 1994, 1995, 1997, 1998, 1999, 2001, 2002, 2003, 2005, 2006, 2007, 2009, 2010, 2011, 2013, 2014, 2015))

yearspan=$(seq 1979 2015)

ncks -O --mk_rec_dmn time /dmine/data/VIC/total_column_soil_moisture.nc /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc

p=1

for i in $yearspan; do


if [[ "$yearspan" != "1980" ||  "$yearspan" != "1984" ]]; then
#mlast=(p * 365)
first=$(((p * 365)-364))

last=$((((p*365) -364) + 30))

#--January

j=total_column_moisture_jan_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 58))

#--February

j=total_column_moisture_feb_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 58))




#--March

j=total_column_moisture_mar_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 89))

#--April

j=total_column_moisture_apr_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 119))

#--May

j=total_column_moisture_may_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 150))

#--June

j=total_column_moisture_jun_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 180))

#--July

j=total_column_moisture_jul_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 211))

#--August

j=total_column_moisture_aug_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 242))

#--September

j=total_column_moisture_sep_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 273))

#--October

j=total_column_moisture_oct_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 303))

#--November

j=total_column_moisture_nov_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 333))


#--December

j=total_column_moisture_dec_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/total_column_soil_moisture_time_as_record_dimension.nc /dmine/data/VIC/month/$varyearfinal.nc

first=$(($last +1))

last=$((((p*365) -364) + 364))











fi
p=$p+1

done
