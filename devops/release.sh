mkdir artifacts
cat >./artifacts/manifest.json <<EOF
{
    "artifactSchema": "default",
    "version": "${CIRCLE_TAG}",
    "commitHash": "${CIRCLE_SHA1}"
}
EOF
bucket=fn-release-trains
aws s3 sync ./artifacts s3://$bucket/packages/${CIRCLE_PROJECT_REPONAME}/artifacts/${CIRCLE_TAG}