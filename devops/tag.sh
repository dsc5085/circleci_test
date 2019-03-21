version=`cat version_info`
git config --global user.email "<>"
git config --global user.name "CircleCI"
git tag -a $version ${CIRCLE_SHA1} -m="Created by CircleCI"