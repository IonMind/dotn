if [ "$BUILD.SOURCEBRANCH"  == "refs/heads/master" ]
then
    echo "master branch"
fi
echo $BUILD_SOURCEBRANCH
echo $BUILD_SOURCEBRANCHNAME
echo $AGENT_WORKFOLDER
echo $BUILD_REPOSITORY_LOCALPATH
rm -rf $AGENT_WORKFOLDER\\$BUILD_SOURCEBRANCHNAME
mkdir $AGENT_WORKFOLDER\\$BUILD_SOURCEBRANCHNAME
# git clone "C:\Users\abhishek.chaudhary\Documents\All Repos\salescloser360" "../Source/Sales_Closer_360";