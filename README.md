# Terraform_Aws_Vpc
Init:= prepare your working directory for the other command

validate:= check whether the configuration is valid 

plan:= show changes required by the current configuration

apply:= Create or update infrastructure
destroy:= Destroy previously created infrastructure

Steps:=

 Subnet: - vpc.id
         - cidr_block  "10.0.0.0/24"
         - az ="us-east-1b"
         - map_public_ip_on_launch = true

  Internet Gateway :- vpc.id

  Routetable := vpc.id
                route - cird
                      - gateway.id

Route table association:= subnet.id
                        = routetable.id

for the key-pair:= ssh-keygen -t rsa
                                    ./id_rsa

for the load balancer:=
1. application loadbalancer:- securitygroup
                            - subnets

2.lb-target group:= vpc.id

3. attach the instance to loadbalancer
4. listner which help to listen between two instances

