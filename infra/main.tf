resource "aws_instance" "app" {
  ami           = "ami-04173560437081c75"
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = ["sg-0de2cb897f55f615a"]
  user_data = <<-EOF
              #!/bin/bash
              sudo dnf update -y
              sudo dnf install -y docker
              sudo systemctl enable docker
              sudo systemctl start docker
              sudo usermod -aG docker ec2-user
              newgrp docker
              EOF

  tags = {
    Name = "devops-node-app"
  }

}



