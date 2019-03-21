version=`cat version_info`
mkdir artifacts
cat >./artifacts/manifest.json <<EOF
{
    "artifactSchema": "default",
    "version": "$version",
    "commitHash": "${CIRCLE_SHA1}"
}
EOF
bucket=davidchen
aws s3 sync ./artifacts s3://$bucket/packages/${CIRCLE_PROJECT_REPONAME}/artifacts/$version