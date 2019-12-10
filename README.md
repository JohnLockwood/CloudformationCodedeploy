# Cloudformation CodeDeploy

This is a template to set up the environment for the CodeDeploy lesson in ACloudGuru's AWS Certified DevOps Professional Course.

To get through the course quickly, it's overkill, but there's not much point in taking a course if you don't also stop to learn something along the way. :)

Currently this is a work in progress and should not be overly relied upon.

Note, the course I'm working through used all availability zones for Load balancer -- I just selected two subnets in US east based on aws ec2 describe-subnets.  This could probably be improved.

## Current Status

|What|Name in Course|Name in YAML (--> Physical ID)|Working in YAML? Y/N?|
|--|--|--|--|
|AWS::IAM::Role|ec2codedeploy|EC2CodeDeployByCFN|Y|
|AWS::IAM::Role|codedeployer|CodeDeployRoleByCFN|Y|
|AWS::ElasticLoadBalancingV2::LoadBalancer|acg|Too long/Logical id is AWSDevopsProCourseLoadBalancer|Y|
