# Script to download all video lectures from course stanford Mining Massive Datasets by Jure Leskovec, Anand Rajaraman, Jeff Ullman

# When Observing the pattern also became too time taking I tried this: I included some URLS which were not valid, It left 
# some tabs open after the download and showed some error in the terminal .. but saved a lot of my time :p   
for i in $(seq 13 195)
do
        xdg-open https://class.coursera.org/mmds-002/lecture/download.mp4?lecture_id=$i
         $i=$((i+1))
done