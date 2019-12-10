# Cloudformation CodeDeploy

This is a template to set up the environment for the CodeDeploy lesson in ACloudGuru's AWS Certified DevOps Professional Course.

To get through the course quickly, it's overkill, but there's not much point in taking a course if you don't also stop to learn something along the way. :)

Currently this is a work in progress and should not be overly relied upon.

Note, the course I'm working through used all availability zones for Load balancer -- I just selected two subnets in US east based on aws ec2 describe-subnets.  This could probably be improved.

This document stops at video 3:07

Then he creates three instances launched into an auto-scaling group.  He installs codeDeploy agent and does other stuff in user data.  He also has keypair to SSH in.  Launch configuration and autoscaling group both called acg. (This guy has no discipline!)  Selects all subnets.  CodeDeploy can use autoscaling group or tags to figure out where to deploy.  Configuration portion ends at video 6:00 and then he moves into CodeDeploy portion

CodeDeploy

## Current Status

|What|Name in Course|Name in YAML (sometimes logical / physical)|Working in YAML? Y/N?|
|--|--|--|--|
|AWS::IAM::Role|ec2codedeploy|EC2CodeDeployByCFN|Y|
|AWS::IAM::Role|codedeployer|CodeDeployRoleByCFN|Y|
|AWS::ElasticLoadBalancingV2::LoadBalancer|acg|AWSDevopsProCourseLoadBalancer|Y|
|AWS::EC2::SecurityGroup|Part of Load Balancer |AWSDevopsProSecurityGroupPort80|Y|
|AWS::ElasticLoadBalancingV2::TargetGroup|target|AWSDevOpsAutoTargetGroup|Y|