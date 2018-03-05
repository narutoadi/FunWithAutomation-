for file in *.*
do
	echo $file
	dir=$(printf "${file}" | tail -c 3)
	echo $dir
	mkdir "${dir}"
	mv "${file}" "${dir}/"
done
