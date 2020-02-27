allNames=("Nikhil" "Kristin" "Alex" "Sparsh" "Mahima" "Maalvika" "Dieter" "Matthew" "Shreya" "Kyle" "Daniel" "Sam Daitzman" "Will" "Katie" "Elias" "Richard" "Gia" "Mark" "Jack Greenberg" "Spenser" "Yichen" "Lucky" "Shirin" "Jack Mao" "Maia" "Casey" "MJ" "HK" "Peter" "Colin" "Julian" "Nathaniel" "David" "Nina" "Khang" "Gracey" "Sam Young")
githubNames=("nikhilanand01" "KristinAoki" "alexbahner1" "sbansal22" "dlrow-olleh" "maalvikabhat" "Inkering" "mpbrucker" "18chowdhary" "kylecombes" "djconnolly27" "sdaitzman" "juicyslew" "katie608" "thearchitector" "hardlyrichie" "gdouglass1" "MarkG98" "jack-Greenberg" "sgriffin10" "yjiang0929" "ljordan51" "s-kuppusamy" "JackMao981" "maiam6242" "CaseyJMay" "MJ-McMillen" "hkRho" "segerpeter07" "colinmsnow" "JulianStone5" "nathanieltan" "davidt315" "ntchirkova" "minhkhang1795" "graceyw" "SamYoung20")
len=${#allNames[@]}
len2=${#githubNames[@]}

for (( i=0; i<$len; i++ ));
do
mkdir "${allNames[$i]}"

if cd "${allNames[$i]}"; then
  git clone "https://github.com/${githubNames[$i]}/ExercisesInC.git"
  cd ..
fi
done
