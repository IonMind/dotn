if [ "$BUILD.SOURCEBRANCH"  == "refs/heads/master" ]
then
    echo "master branch"
fi
echo $BUILD.SOURCEBRANCH
rm -rf Source;
git clone "C:\Users\abhishek.chaudhary\Documents\All Repos\salescloser360" "../Source/Sales_Closer_360";