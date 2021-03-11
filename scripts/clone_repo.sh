if [ "$BUILD.SOURCEBRANCH"  == "refs/heads/master" ]
then
    echo "master branch"
fi
echo $BUILD_SOURCEBRANCH
echo $Build_SourceBranchName
echo $Agent_WorkFolder
mkdir 'Agent_WorkFolder/$Build_SourceBranchName
rm -rf Source;
git clone "C:\Users\abhishek.chaudhary\Documents\All Repos\salescloser360" "../Source/Sales_Closer_360";