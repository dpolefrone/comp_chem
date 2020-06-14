#!/bin/bash
file=$1

echo $file
zp_line=`grep -F "Zero-point correction" $file`
e_line=`grep -F "Sum of electronic and zero-point Energies" $file`
h_line=`grep -F "Sum of electronic and thermal Enthalpies" $file`
g_line=`grep -F "Sum of electronic and thermal Free Energies" $file`
hcorr_line=`grep -F "Thermal correction to Enthalpy" $file`
gcorr_line=`grep -F "Thermal correction to Gibbs Free Energy" $file`

zpc=`echo $zp_line | sed 's/^.*=//' | xargs`
zpc=`echo $zpc | cut -f1 -d"("`
E=`echo $e_line | sed 's/^.*=//' | xargs`
H=`echo $h_line | sed 's/^.*=//' | xargs`
G=`echo $g_line | sed 's/^.*=//' | xargs`
Hcorr=`echo $hcorr_line | sed 's/^.*=//' | xargs`
Gcorr=`echo $gcorr_line | sed 's/^.*=//' | xargs`
HF=`echo "$E-$zpc" | bc -l`

echo HF= $HF
echo H= $H
echo G= $G
echo Hcorr= $Hcorr
echo Gcorr= $Gcorr
