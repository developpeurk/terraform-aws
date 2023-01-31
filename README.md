# terraform

````
provider "aws" {
  region     = "us-east-1"
  access_key = "YourKey"
  secret_key = "YourSecretKey"
}

````

````
resource "aws_instance" "my-first-server" {
  ami             = "ami-0778521d914d23bc1"
  instance_type   = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
}

````

### Create a VPC

````
resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}
````

````
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}
````



````
terraform init
````

````
terraform plan
````

 ````
terraform apply --auto-approve
````

 ````
terraform destroy --auto-approve
````


### 
- [x] Create vpc
- [ ] Create Internet Gateway
- [ ] Create Custom Route Table
- [ ] Create a Subnet
- [ ] Associate subnet with Route Table
- [ ] Create Security Group to allow port 22,80,443
- [ ] Create a network interfaces with an ip in the subnet that was created in step 4
- [ ] Assign an elastic IP to the network interface created in step 7
- [ ] Create Ubuntu server and install/enable appache2
