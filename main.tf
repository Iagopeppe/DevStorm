provider "aws" {
    region = "us-east-2"
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = "VPC"
    }
}

resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-2a"
    tags = {
        Name = "public-subnet-1"
    }
}

resource "aws_subnet" "public_subnet_2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-2b"
    tags = {
        Name = "public-subnet-2"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = "Internet Gateway"
    }
}

resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        Name = "hackathon-public-route-table"
    }
}

resource "aws_route_table_association" "public_subnet_1_association" {
    subnet_id      = aws_subnet.public_subnet_1.id
    route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet_2_association" {
    subnet_id      = aws_subnet.public_subnet_2.id
    route_table_id = aws_route_table.public_route_table.id
}

data "aws_ami" "amzn-linux-2023-ami" {
    most_recent = true
    owners      = ["amazon"]
    filter {
        name   = "name"
        values = ["al2023-ami-2023.*-x86_64"]
    }
    tags = {
        name = "linux-filter"
    }
}

resource "aws_instance" "frontend" {
    ami             = "ami-0c55b159cbfafe1f0"  # Você pode trocar isso pela ID da AMI que você pegou via data
    instance_type   = "t2.large"
    subnet_id       = aws_subnet.public_subnet_1.id  # Agora estamos usando apenas uma subnet
    tags = {
        Name = "frontend-instance"
    }
}

resource "aws_db_subnet_group" "db_subnet_group" {
    name       = "my-db-subnet-group"
    subnet_ids = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
    tags = {
        Name = "my-db-subnet-group"
    }
}

resource "aws_db_instance" "db" {
    allocated_storage    = 20
    engine               = "mysql"
    engine_version       = "8.0"
    instance_class       = "db.t3.micro"
    username             = "admin"
    password             = "SuperSecretPassword123"
    db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
    publicly_accessible  = false
    skip_final_snapshot  = true
    tags = {
        Name = "chatbot-rds"
    }
}