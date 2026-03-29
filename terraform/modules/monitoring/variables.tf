variable "honeypot_ips" {
  description = "IPs of honeypot nodes for Prometheus to scrape"
  type        = list(string)
}
EOF\cat > terraform/modules/monitoring/outputs.tf << 'EOF'
output "grafana_url" {
  value = "http://${aws_instance.monitoring.public_ip}:3000"
}
