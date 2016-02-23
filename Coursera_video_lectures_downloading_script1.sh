# Bash script to download all video lectures from course Algorithms: Design and Analysis part 1

# How I got this idea : I Was tired of clicking on each lecture link to download it. 
#                       When I was moving my cursor to the Lecture link the browser showed the URL of download link.
#                       Then I used the URL with 'xdg-open', which is used to open a site in the deafault browser from terminal, and 
#                       downloaded my first lecture from terminal.
#                       Then I observed the pattern in the url of all lectures of this course and made a simple bash script :)
for i in $(seq 1 19)
do
        xdg-open https://class.coursera.org/algo-009/lecture/download.mp4?lecture_id=$i
done

for i in $(seq 21 41)
do
        xdg-open https://class.coursera.org/algo-009/lecture/download.mp4?lecture_id=$i
done

for i in $(seq 48 76)
do
        xdg-open https://class.coursera.org/algo-009/lecture/download.mp4?lecture_id=$i
done

for i in $(seq 147 149)
do
        xdg-open https://class.coursera.org/algo-009/lecture/download.mp4?lecture_id=$i
done

for i in $(seq 151 169)
do
        if [ $i = 165 ]; then 
          $i=$((i+2))  
          fi
        xdg-open https://class.coursera.org/algo-009/lecture/download.mp4?lecture_id=$i
        $i=$((i+1))
done
