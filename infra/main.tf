resource "aws_instance" "app" {
  ami           = "ami-0b8607d2721c94a77" # Ubuntu 22.04 in ap-south-1
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = ["sg-0de2cb897f55f615a"]

  tags = {
    Name = "devops-node-app"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y docker.io",
      "sudo systemctl enable docker",
      "sudo usermod -aG docker ubuntu"
    ]
  }
      connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host        = self.public_ip
    }
}



