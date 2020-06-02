#Polefrone, DA. June 2020. 
#Expected input: Cartesian coordinates only. 

echo "Title?"
read input_title
new_com=$input_title'.com'

echo "%nprocshared=16" >> $new_com
echo "%mem=16GB" >> $new_com

input_file=$1
echo "Input full keyword string (recommend copy and pasting!)."
read input_keywords
echo $input_keywords >> $new_com
echo "" >> $new_com
echo $input_title >> $new_com
echo "" >> $new_com
echo "Specify Charge and Multiplicity (i.e. 'x y')"
read ch_mult
echo $ch_mult >> $new_com
cat $input_file >> $new_com
