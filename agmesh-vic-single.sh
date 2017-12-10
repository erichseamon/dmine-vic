#!/bin/sh
#
# NAME: agmesh-subset.sh
# PURPOSE: Bash script that is called by R for subsetting climatic datasets
# AUTHOR: Erich Seamon
# INSTITUTION: University of Idaho
# DATE: 12/10/2014
#

#yearspan=(1979, 1981, 1982, 1983, 1985, 1986, 1987, 1989, 1990, 1991, 1993, 1994, 1995, 1997, 1998, 1999, 2001, 2002, 2003, 2005, 2006, 2007, 2009, 2010, 2011, 2013, 2014, 2015))

yearspan=$(seq 1979 2015)

ncks -O --mk_rec_dmn time /dmine/data/VIC/total_moisture.nc /dmine/data/VIC/month/x.nc

p = 1
for i in $yearspan; do


if [[ "$yearspan" != "1980" ||  "$yearspan" != "1984" ]]; then
last = $p * 365
first = $last - 364

#-january

first_jan =$first
last_jan = $first + 30

j=total_moisture_jan_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,$first,$last,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-february

j=total_moisture_feb_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,32,59,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-march

j=total_moisture_mar_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,60,90,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-april

j=total_moisture_apr_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,91,120,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-may

j=total_moisture_may_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,121,151,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-june

j=total_moisture_jun_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,152,181,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-july

j=total_moisture_jul_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,182,212,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-august

j=total_moisture_aug_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,213,243,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-september

j=total_moisture_sep_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,244,273,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-october

j=total_moisture_oct_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,274,304,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-november

j=total_moisture_nov_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,305,334,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

#-december

j=total_moisture_dec_
varyear=$i
varyearfinal=$j$i
echo "Calculating and creating" $j "..."
ncra -O --no_tmp_fl -F -d time,335,365,444 /dmine/data/VIC/month/x.nc /dmine/data/VIC/month/$varyearfinal.nc

fi

done
