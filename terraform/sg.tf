# AWS EC2 Security group for MasterTV
resource "aws_security_group" "infotek-sg" {
  name = "infotek-sg"
  description = "Allow Grafana/InfluxDB ports"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8083
    to_port = 8083
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 8086
    to_port = 8086
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}

