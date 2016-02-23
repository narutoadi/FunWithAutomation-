# Script to download all video lectures from course Algorithms: Design and Analysis part 2

for i in $(seq 7 19)
do
        xdg-open https://class.coursera.org/algo2-004/lecture/download.mp4?lecture_id=$i
        $i=$((i+1))
done

for i in $(seq 25 37)
do
        xdg-open https://class.coursera.org/algo2-004/lecture/download.mp4?lecture_id=$i
        $i=$((i+1))
done

for i in $(seq 57 221)
do
        xdg-open https://class.coursera.org/algo2-004/lecture/download.mp4?lecture_id=$i
        $i=$((i+1))
done