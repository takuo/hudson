vendor/cm/get-prebuilts

SAVEPWD=`pwd`

PROJECTS="vendor/cm"

for p in $PROJECTS; do
  repo="android_`echo $p | sed -e 's!/!_!g'`"
  cd $SAVEPWD/$p && \
  git fetch http://github.com/takuo/$repo refs/heads/northeye-10.2 && git merge FETCH_HEAD
done
cd $SAVEPWD

