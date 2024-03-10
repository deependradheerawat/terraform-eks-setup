resource "aws_elb" "tfer--a188df5a365184d6bba8a611a38d9db0" {
  availability_zones          = ["us-west-1a", "us-west-1b"]
  connection_draining         = "false"
  connection_draining_timeout = "300"
  cross_zone_load_balancing   = "false"
  desync_mitigation_mode      = "defensive"

  health_check {
    healthy_threshold   = "2"
    interval            = "10"
    target              = "TCP:30955"
    timeout             = "5"
    unhealthy_threshold = "6"
  }

  idle_timeout = "60"
  internal     = "false"

  listener {
    instance_port     = "30955"
    instance_protocol = "tcp"
    lb_port           = "8080"
    lb_protocol       = "tcp"
  }

  name                  = "a188df5a365184d6bba8a611a38d9db0"
  security_groups       = ["sg-0ecb631e4a5867a14"]
  source_security_group = "873550445328/k8s-elb-a188df5a365184d6bba8a611a38d9db0"
  subnets               = ["subnet-04550e6d9795d9d09", "subnet-055313d175a9bfdfb"]

  tags = {
    "kubernetes.io/cluster/fortune-eks" = "owned"
    "kubernetes.io/service-name"        = "fortune/fortune"
  }

  tags_all = {
    "kubernetes.io/cluster/fortune-eks" = "owned"
    "kubernetes.io/service-name"        = "fortune/fortune"
  }
}
