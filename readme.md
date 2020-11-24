
- cloudformation.yml to prepare the EC2 and security group needed for that and network
- To build docker image use the following command
> sudo docker build . --tag udacitycap

- To run docker image use the following command
> sudo docker run  -p 3000:3000 udacitycap