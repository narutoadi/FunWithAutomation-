# This bash script downloads all the videos from a youtube playlist which are given on a single page
# Let us use this script to download all cold-play videos from the playlist -> "https://www.youtube.com/playlist?list=PLsvoYlzBrLFAJd4hNQSHw1lYjDKeQB_iU"

# lets first copy all the links given on the page in file1.txt (change the URL after 'dump' as per your requirement )

lynx --dump "https://www.youtube.com/playlist?list=PLsvoYlzBrLFAJd4hNQSHw1lYjDKeQB_iU" | awk '/http/{print $2}' > file1.txt 

# Lets remove the duplicat entries from this file

sort file1.txt > file2.txt
uniq file2.txt > file1.txt

# By analyzing the content in file1 it is sure that we want to download only those videos which have "index=" as substring .. 
# Hence lets remove all other links from this site

grep "index=" file1.txt > file2.txt

# Lets add the prefix 'youtube-dl' to all the links and copy the file into a .sh file

sed -e 's/^/youtube-dl /' file2.txt > file3.sh

# Lets run the .sh file 

sh file3.sh 

# happy downloading :) 
