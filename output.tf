output "id" {
  description = "The ARN of the load balancer (matches arn)."
  value       =  aws_lb.this.id
}

output "arn"{
  description = "The ARN of the load balancer (matches id)"
  value       =  aws_lb.this.arn
}

output "arn_suffix"{
  description = "The ARN suffix for use with CloudWatch Metrics"
  value       =  aws_lb.this.arn_suffix
}

output "dns_name"{
  description = "The DNS name of the load balancer."
  value       =  aws_lb.this.dns_name
}

output "zone_id"{
  description = "The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record)"
  value       =  aws_lb.this.zone_id
}
