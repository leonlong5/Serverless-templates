# 1. creaet an s3 bucket to hold the package for cloundformation

aws s3 mb s3://long-code-sam

# 2. package cloundformation (can use `sam package`, equal to aws cloudformation)
# this will genearte a template-generated.yaml file for deploy
# also push cur code zip file to s3 bucket
aws cloudformation package \
    --s3-bucket long-code-sam \
    --template-file template.yaml \
    --output-template-file gen/template-generated.yaml

# 3. sam deploy, it will create changeset and deploy your code to lambda
aws cloudformation deploy \
    --template-file gen/template-generated.yaml \
    --stack-name serverless \
    --capabilities CAPABILITY_IAM
