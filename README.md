# Github Link
https://github.com/Odai-Atef/udacity-capstone


# Docker image
https://hub.docker.com/repository/docker/odaiatef/udacitycap

# Run Cloudformation to create EC2 instances with security group
 ``` aws cloudformation deploy --stack-name "udacity-capstone" --parameter-overrides WorkflowID="ece4ca7" --template-file ./cloudformation.yml --capabilities CAPABILITY_NAMED_IAM --tags project=udacity-capstone
 ```
 
# Run ansible to  install kubernetes cluster and deploy the docker image of the application
``` ansible-playbook  -i inventory.txt playbook.yml ```

# How CD works 
- Create EC2 instance and Security group with open port 3000 using cloudformation
- Install docker and kubernetes at the server using ansible
- Deploy the docker image if not exist or upgrade it to latest version using kubernetes