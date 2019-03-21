version=`cat version_info`
git tag -a $version ${CIRCLE_SHA1}