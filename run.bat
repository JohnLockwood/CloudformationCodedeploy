aws cloudformation delete-stack --stack-name CloudDeploy2019
aws cloudformation create-stack --stack-name CloudDeploy2019 --template-body file://./template.yaml --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM --tags Key=course,Value="AWS Devops Professional" Key=removeAfter,Value="06/2020"    

@REM aws cloudformation validate-template --template-body file://./template.yaml 

@REM --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM 