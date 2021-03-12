if [ "$BUILD.SOURCEBRANCH"  == "refs/heads/master" ]
then
    echo "master branch"
fi
echo $BUILD_SOURCEBRANCH
echo $BUILD_SOURCEBRANCHNAME
echo $AGENT_WORKFOLDER
echo $BUILD_REPOSITORY_LOCALPATH
echo $BUILD_BUILDID
echo $BUILD_BUILDNUMBER

rm -rf Source
git clone "C:\Users\abhishek.chaudhary\Documents\All Repos\salescloser360" "./Source/Sales_Closer_360";