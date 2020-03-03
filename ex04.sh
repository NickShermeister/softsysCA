allNames=("Nikhil" "Kristin" "Alex" "Sparsh" "Mahima" "Maalvika" "Dieter" "Matthew" "Shreya" "Kyle" "Daniel" "Sam Daitzman" "Will" "Katie" "Elias" "Rich" "Gia" "Mark" "Jack Greenberg" "Spenser" "Yichen" "Lucky" "Shirin" "Jack Mao" "Maia" "Casey" "MJ" "HK" "Peter" "Colin" "Julian" "Nathaniel" "David" "Nina" "Khang" "Gracey" "Sam Young")
githubNames=("nikhilanand01" "KristinAoki" "alexbahner1" "sbansal22" "dlrow-olleh" "maalvikabhat" "Inkering" "mpbrucker" "18chowdhary" "kylecombes" "djconnolly27" "sdaitzman" "juicyslew" "katie608" "thearchitector" "hardlyrichie" "gdouglass1" "MarkG98" "jack-Greenberg" "sgriffin10" "yjiang0929" "ljordan51" "s-kuppusamy" "JackMao981" "maiam6242" "CaseyJMay" "MJ-McMillen" "hkRho" "segerpeter07" "colinmsnow" "JulianStone5" "nathanieltan" "davidt315" "ntchirkova" "minhkhang1795" "graceyw" "SamYoung20")
len=${#allNames[@]}
len2=${#githubNames[@]}
curr=$PWD
# trout: all .c files exist: 2 pts; compiles: 2 points; compiles w/out warnings: 3 points
# Unit testing: test_util.c exists: 1 pt; tests a function: 2 pts

outfile="${curr}/notes.txt"

echo "Beginning Grading ex04" >> $outfile

for (( i=0; i<$len; i++ ));
do
if cd "${allNames[$i]}/ExercisesInC/exercises/ex04"; then
  echo "Beginning Grading ${allNames[$i]}" >> $outfile
  echo $(pwd)
  if cd "trout/"; then
    echo "trout"
    rm *.o
    less Makefile
    ls
    read  -p "${allNames[$i]}\n Makefile Notes: " output
    echo "${allNames[$i]}\n Makefile Notes: " >> $outfile
    echo $output >> $outfile
    read  -p "Pick command\n" output
    make "${output}"
    if less "test_util.c"; then
      gcc test_util.c -o testout
      chmod 777 testout
      ./testout
      read  -p "${allNames[$i]}\n test_util.c: " output
      echo $output >> $outfile

    else
      if less "../test_util.c"; then
        gcc ../test_util.c -o testout
        chmod 777 ../testout
        ./../testout
        read  -p "${allNames[$i]}\n test_util.c: " output
        echo $output >> $outfile
      else
        echo "test_util.c DNE at this level"
        read  -p "${allNames[$i]}\n test_util.c: " output
        echo $output >> $outfile
      fi
    fi
    cd ..
  else
    echo "No trout found."
    read  -p "${allNames[$i]}\n trout DNE: " output
    echo $output >> $outfile
  fi

  read  -p "${allNames[$i]}\n overall notes: " output
  echo $output >> $outfile
  cd "${curr}"
else
  echo "Something wrong with ${allNames[$i]}"
fi
read  -n 1 -p "Press button when done:" output
echo ""
done
