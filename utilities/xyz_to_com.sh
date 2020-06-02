#Polefrone, DA. June 2020. 
#Expected input: .com file only. 

input_file=$1

input_title=${input_file%%.xyz}
new_com=$input_title'.com'

echo "%nprocshared=16; %mem=16GB (default)."
echo "%nprocshared=16" >> $new_com
echo "%mem=16GB" >> $new_com

echo "Input full keyword string (copy and paste recommended)."
read input_keywords
echo $input_keywords >> $new_com
echo "" >> $new_com
echo $input_title >> $new_com
echo "" >> $new_com
echo "Specify Charge and Multiplicity (i.e. 'x y')"
read ch_mult
echo $ch_mult >> $new_com
sed '1,2d' $input_file | cat >> $new_com
echo "" >> $new_com
echo "" >> $new_com

