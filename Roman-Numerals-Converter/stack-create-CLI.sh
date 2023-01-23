### 1. Use our AWS CloudFormation template in a call to the create-stack command. This stack will launch a new Amazon EC2 instance with the CodeDeploy agent installed.

#To launch an Amazon EC2 instance running Amazon Linux:

aws cloudformation create-stack \
  --stack-name CodeDeployDemoStack \
  --template-url templateURL \
  --parameters ParameterKey=InstanceCount,ParameterValue=1 ParameterKey=InstanceType,ParameterValue=t1.micro \
    ParameterKey=KeyPairName,ParameterValue=keyName ParameterKey=OperatingSystem,ParameterValue=Linux \
    ParameterKey=SSHLocation,ParameterValue=0.0.0.0/0 ParameterKey=TagKey,ParameterValue=Name \
    ParameterKey=TagValue,ParameterValue=CodeDeployDemo \
  --capabilities CAPABILITY_IAM

#keyName ==>> is the instance key pair name. Type the key pair name only, not the key pair file extension.

#template-url ==>> is the location of the AWS CloudFormation template for your region:
#US East (N. Virginia) Region  ==>> http://s3.amazonaws.com/aws-codedeploy-us-east-1/templates/latest/CodeDeploy_SampleCF_Template.json

#This command creates an AWS CloudFormation stack named CodeDeployDemoStack, using the AWS CloudFormation template in the specified Amazon S3 bucket. The Amazon EC2 instance is based on the t1.micro instance type, but you can use any type. It is tagged with the value CodeDeployDemo, but you can tag it with any value. It has the specified instance key pair applied.


### 2. Call the describe-stacks command to verify the AWS CloudFormation stack named CodeDeployDemoStack was successfully created:

aws cloudformation describe-stacks --stack-name CodeDeployDemoStack --query "Stacks[0].StackStatus" --output text

# !!!!!! Do not proceed until the value CREATE_COMPLETE is returned.  !!!!!