resource "aws_instance" "tfer--i-049a8db2187061de5_Demo-server" {
  ami                         = "ami-07619059e86eaaaa2"
  associate_public_ip_address = "true"
  availability_zone           = "us-west-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"
  key_name                             = "demokey"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.10.5"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "25"
    volume_type           = "gp3"
  }

  security_groups   = ["default"]
  source_dest_check = "true"
  subnet_id         = "subnet-04550e6d9795d9d09"

  tags = {
    Name = "Demo-server"
  }

  tags_all = {
    Name = "Demo-server"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01a43e88282f5c264"]
}

resource "aws_instance" "tfer--i-09a0f24d1968a1296_" {
  ami                         = "ami-08243e88938e766c3"
  associate_public_ip_address = "true"
  availability_zone           = "us-west-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "1"
  }

  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-74c714a1-a5c6-cf32-6e01-b6ec29ac0d42"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.small"
  ipv6_address_count                   = "0"

  launch_template {
    id      = "lt-0170596b0e02f267f"
    name    = "eks-74c714a1-a5c6-cf32-6e01-b6ec29ac0d42"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.25.115"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "20"
    volume_type           = "gp2"
  }

  secondary_private_ips = ["172.31.16.80", "172.31.19.17", "172.31.19.224"]
  security_groups       = ["eks-cluster-sg-fortune-eks-1175221505"]
  source_dest_check     = "true"
  subnet_id             = "subnet-055313d175a9bfdfb"

  tags = {
    "eks:cluster-name"                      = "fortune-eks"
    "eks:nodegroup-name"                    = "node-group-2"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "k8s.io/cluster-autoscaler/fortune-eks" = "owned"
    "kubernetes.io/cluster/fortune-eks"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                      = "fortune-eks"
    "eks:nodegroup-name"                    = "node-group-2"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "k8s.io/cluster-autoscaler/fortune-eks" = "owned"
    "kubernetes.io/cluster/fortune-eks"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVVJDVkVORFFXVXlaMEYzU1VKQlowbEpZa2hGZW5scFZXNUNiREIzUkZGWlNrdHZXa2xvZG1OT1FWRkZURUpSUVhkR1ZFVlVUVUpGUjBFeFZVVUtRWGhOUzJFelZtbGFXRXAxV2xoU2JHTjZRV1ZHZHpCNVRrUkJlazFVUVhoT2Fra3pUa1JLWVVaM01IcE9SRUY2VFVSbmVFNXFUWGxPUkVwaFRVSlZlQXBGZWtGU1FtZE9Wa0pCVFZSRGJYUXhXVzFXZVdKdFZqQmFXRTEzWjJkRmFVMUJNRWREVTNGSFUwbGlNMFJSUlVKQlVWVkJRVFJKUWtSM1FYZG5aMFZMQ2tGdlNVSkJVVVJtVm1nek9VWlZVRUoyUVU1TWMxbDNjRUZ4VWxkRlJUQkZabW96WjNBMGNFbFVXWEpHYUZweU1IZDBXbE5wWmpOdGEwUjZRVVJpV1VvS2NGTmplakJvTVZjdlRFbzBaSGx5VTA1UFlYaENSMk54TVM5MFZEQnZWbEUwZVdOdmNFb3diVTlOTVRsSGJYTnFSMDlOTUZGR2JGbExiWE0xUVVOcEx3cHBNVk5EVkZKRFRYWk1lV2xoWVdkYVdtNU5abUk1Ym5kS1pVaHdRV2hHV0VKNVEwd3dRakJYTVU5NlN6TnBWVk5sT1ZGbWNHMUZkVWhrUmpCT1NFOUNDalJsWldjeVEwOTNOWEZ6WXpZMFJuZFJSR1ZvUlVWQlptcEhjRTVGYWsxWWVYVnFTMjFMZWxoQmJ5OWhSbTV3VDAwMmRHa3ZjMjVQTm1oUmFDdHpZbk1LTDIxaE1GQlNWMFpFWkZWbGVqWnZiRmx2UjBaMGJsZDBPRFpTU1dwdU1uY3dWemhIWTJ4RFdWQkpNa2QyUkM5ck1FNWhTVE5XWVRBM2FrRlBjbUUwV0FwNmNtVlBMMEphVFc1Q2JsazBlRmhDWVRGRVdUQmFjbGQxY0UxaVFXZE5Ra0ZCUjJwWFZFSllUVUUwUjBFeFZXUkVkMFZDTDNkUlJVRjNTVU53UkVGUUNrSm5UbFpJVWsxQ1FXWTRSVUpVUVVSQlVVZ3ZUVUl3UjBFeFZXUkVaMUZYUWtKVFZUWTRlVzB6UldoMlNsZHlUak5QVlZoc2IyOHlhVmh2WkVKcVFWWUtRbWRPVmtoU1JVVkVha0ZOWjJkd2NtUlhTbXhqYlRWc1pFZFdlazFCTUVkRFUzRkhVMGxpTTBSUlJVSkRkMVZCUVRSSlFrRlJRbEp2UlRSbk9FTXdOQXBIWW14UVNqUnNNRWhtSzJwdlFqZFZSR05WU1ZORmRtVmpNak5aWlc5dU0zRlRiMnBaSzFKek1FZFpTMWROVm1kNk4wUTViMWhHYjBWQ0t6UjZjVEZYQ214eGVFTlFhM05zTkU1SFdUUk9jalpRTjNkcmNuUnNVR05RU0hoMU5EQnhiRGs0Wm5BeVpURmlhMVV4YW5scVVVUnNiV3AwYjFRclVWSnhTRU0zUlcwS2RFSkdTV014VEcxemFGVXZNeXRCUjNFclFrZHhNWEZXWkZJMVlUUmxZVXcyTkhadmNrUTVkVEo2VlcxeGNFZGpkSFJEY1VaRmVVdzVRbEJXT1hKMGRBcDVkWGhvUlZwalpsWkZPRUZLVEV3dlZXUm5Xa05vTTAwMmNIbEhRa2QxUlVkaFVYWmlkRGxETjJ4Sll6bHdORTl2UVZVME1IQm9UV2xMSzNoTFFrSXJDblJUVTI1b2FWbG9LMEV6ZFUxM01tbHBVbGx1Y1hsRk1WQlRiV3c1UjJOaVZHMU1TVWs1YVhsV2IzaDJRbUZxTjBWd04xTjFkR3hKYkZWUGVUZDJOSEVLU1d0b1IydFVibk5WWVRaMUNpMHRMUzB0UlU1RUlFTkZVbFJKUmtsRFFWUkZMUzB0TFMwSwpBUElfU0VSVkVSX1VSTD1odHRwczovL0M4MTlCNkJBOERCMzFGMjY4NkZBMzVBRUJENzRDNEE3LnlsNC51cy13ZXN0LTEuZWtzLmFtYXpvbmF3cy5jb20KSzhTX0NMVVNURVJfRE5TX0lQPTEwLjEwMC4wLjEwCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBmb3J0dW5lLWVrcyAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTA4MjQzZTg4OTM4ZTc2NmMzLGVrcy5hbWF6b25hd3MuY29tL2NhcGFjaXR5VHlwZT1PTl9ERU1BTkQsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPW5vZGUtZ3JvdXAtMiAtLW1heC1wb2RzPTExJyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0fb7e717fe0c682de"]
}

resource "aws_instance" "tfer--i-0cb3ec62e30316654_" {
  ami                         = "ami-08243e88938e766c3"
  associate_public_ip_address = "true"
  availability_zone           = "us-west-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "1"
  }

  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-6ec714a1-070e-c862-0067-1d265a57d358"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.small"
  ipv6_address_count                   = "0"
  key_name                             = "demokey"

  launch_template {
    id      = "lt-0513fc3ddaf7c8b08"
    name    = "eks-6ec714a1-070e-c862-0067-1d265a57d358"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.24.89"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "20"
    volume_type           = "gp2"
  }

  secondary_private_ips = ["172.31.21.148", "172.31.24.229", "172.31.30.135"]
  security_groups       = ["eks-cluster-sg-fortune-eks-1175221505", "eks-remoteAccess-6ec714a1-070e-c862-0067-1d265a57d358"]
  source_dest_check     = "true"
  subnet_id             = "subnet-055313d175a9bfdfb"

  tags = {
    "eks:cluster-name"                      = "fortune-eks"
    "eks:nodegroup-name"                    = "node-group-1"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "k8s.io/cluster-autoscaler/fortune-eks" = "owned"
    "kubernetes.io/cluster/fortune-eks"     = "owned"
  }

  tags_all = {
    "eks:cluster-name"                      = "fortune-eks"
    "eks:nodegroup-name"                    = "node-group-1"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "k8s.io/cluster-autoscaler/fortune-eks" = "owned"
    "kubernetes.io/cluster/fortune-eks"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVVJDVkVORFFXVXlaMEYzU1VKQlowbEpZa2hGZW5scFZXNUNiREIzUkZGWlNrdHZXa2xvZG1OT1FWRkZURUpSUVhkR1ZFVlVUVUpGUjBFeFZVVUtRWGhOUzJFelZtbGFXRXAxV2xoU2JHTjZRV1ZHZHpCNVRrUkJlazFVUVhoT2Fra3pUa1JLWVVaM01IcE9SRUY2VFVSbmVFNXFUWGxPUkVwaFRVSlZlQXBGZWtGU1FtZE9Wa0pCVFZSRGJYUXhXVzFXZVdKdFZqQmFXRTEzWjJkRmFVMUJNRWREVTNGSFUwbGlNMFJSUlVKQlVWVkJRVFJKUWtSM1FYZG5aMFZMQ2tGdlNVSkJVVVJtVm1nek9VWlZVRUoyUVU1TWMxbDNjRUZ4VWxkRlJUQkZabW96WjNBMGNFbFVXWEpHYUZweU1IZDBXbE5wWmpOdGEwUjZRVVJpV1VvS2NGTmplakJvTVZjdlRFbzBaSGx5VTA1UFlYaENSMk54TVM5MFZEQnZWbEUwZVdOdmNFb3diVTlOTVRsSGJYTnFSMDlOTUZGR2JGbExiWE0xUVVOcEx3cHBNVk5EVkZKRFRYWk1lV2xoWVdkYVdtNU5abUk1Ym5kS1pVaHdRV2hHV0VKNVEwd3dRakJYTVU5NlN6TnBWVk5sT1ZGbWNHMUZkVWhrUmpCT1NFOUNDalJsWldjeVEwOTNOWEZ6WXpZMFJuZFJSR1ZvUlVWQlptcEhjRTVGYWsxWWVYVnFTMjFMZWxoQmJ5OWhSbTV3VDAwMmRHa3ZjMjVQTm1oUmFDdHpZbk1LTDIxaE1GQlNWMFpFWkZWbGVqWnZiRmx2UjBaMGJsZDBPRFpTU1dwdU1uY3dWemhIWTJ4RFdWQkpNa2QyUkM5ck1FNWhTVE5XWVRBM2FrRlBjbUUwV0FwNmNtVlBMMEphVFc1Q2JsazBlRmhDWVRGRVdUQmFjbGQxY0UxaVFXZE5Ra0ZCUjJwWFZFSllUVUUwUjBFeFZXUkVkMFZDTDNkUlJVRjNTVU53UkVGUUNrSm5UbFpJVWsxQ1FXWTRSVUpVUVVSQlVVZ3ZUVUl3UjBFeFZXUkVaMUZYUWtKVFZUWTRlVzB6UldoMlNsZHlUak5QVlZoc2IyOHlhVmh2WkVKcVFWWUtRbWRPVmtoU1JVVkVha0ZOWjJkd2NtUlhTbXhqYlRWc1pFZFdlazFCTUVkRFUzRkhVMGxpTTBSUlJVSkRkMVZCUVRSSlFrRlJRbEp2UlRSbk9FTXdOQXBIWW14UVNqUnNNRWhtSzJwdlFqZFZSR05WU1ZORmRtVmpNak5aWlc5dU0zRlRiMnBaSzFKek1FZFpTMWROVm1kNk4wUTViMWhHYjBWQ0t6UjZjVEZYQ214eGVFTlFhM05zTkU1SFdUUk9jalpRTjNkcmNuUnNVR05RU0hoMU5EQnhiRGs0Wm5BeVpURmlhMVV4YW5scVVVUnNiV3AwYjFRclVWSnhTRU0zUlcwS2RFSkdTV014VEcxemFGVXZNeXRCUjNFclFrZHhNWEZXWkZJMVlUUmxZVXcyTkhadmNrUTVkVEo2VlcxeGNFZGpkSFJEY1VaRmVVdzVRbEJXT1hKMGRBcDVkWGhvUlZwalpsWkZPRUZLVEV3dlZXUm5Xa05vTTAwMmNIbEhRa2QxUlVkaFVYWmlkRGxETjJ4Sll6bHdORTl2UVZVME1IQm9UV2xMSzNoTFFrSXJDblJUVTI1b2FWbG9LMEV6ZFUxM01tbHBVbGx1Y1hsRk1WQlRiV3c1UjJOaVZHMU1TVWs1YVhsV2IzaDJRbUZxTjBWd04xTjFkR3hKYkZWUGVUZDJOSEVLU1d0b1IydFVibk5WWVRaMUNpMHRMUzB0UlU1RUlFTkZVbFJKUmtsRFFWUkZMUzB0TFMwSwpBUElfU0VSVkVSX1VSTD1odHRwczovL0M4MTlCNkJBOERCMzFGMjY4NkZBMzVBRUJENzRDNEE3LnlsNC51cy13ZXN0LTEuZWtzLmFtYXpvbmF3cy5jb20KSzhTX0NMVVNURVJfRE5TX0lQPTEwLjEwMC4wLjEwCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBmb3J0dW5lLWVrcyAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTA4MjQzZTg4OTM4ZTc2NmMzLGVrcy5hbWF6b25hd3MuY29tL2NhcGFjaXR5VHlwZT1PTl9ERU1BTkQsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPW5vZGUtZ3JvdXAtMSAtLW1heC1wb2RzPTExJyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="
  vpc_security_group_ids = ["sg-0114721e832a8b5e1", "sg-0fb7e717fe0c682de"]
}
