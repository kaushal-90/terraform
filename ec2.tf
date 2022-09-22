# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
    ami = "ami-06489866022e12a14"
    instance_type = "t2.micro"
    key_name = "tests"
    vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
    subnet_id = "${aws_subnet.public_sub1.id}"
    associate_public_ip_address = true
    user_data = "${file("data.sh")}"
    tags = {
      Name = "my public instance 1"

    }
  
}


# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance-1" {
    ami = "ami-06489866022e12a14"
    instance_type = "t2.micro"
    key_name = "tests"
    vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
    subnet_id = "${aws_subnet.public_sub2.id}"
    associate_public_ip_address = true
    user_data = "${file("data.sh")}"
    tags = {
      Name = "my public instance 2"

    }
  
}

