bucket=davidchen
aws s3 sync . s3://$bucket/packages/${CIRCLE_PROJECT_REPONAME}/artifacts/${CIRCLE_TAG}