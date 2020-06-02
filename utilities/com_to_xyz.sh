#Polefrone, DA. June 2020. 
#Expected input: .com file only. 

input_file=$1

input_title=${input_file%%.com}
new_xyz=$input_title'.xyz'

n_atoms=`cat $input_file | sed '1,7d' $input_file | sed '/^\s*$/d' | wc -l`
echo $n_atoms
echo $n_atoms >> $new_xyz
cat $new_xyz
echo "" >> $new_xyz
sed '1,7d' $input_file | cat >> $new_xyz
echo "" >> $new_xyz
echo "" >> $new_xyz
