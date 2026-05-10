output "invoke_url" {
  description = "Invoke URL for the HTTP API stage."
  value       = module.compute_lambda.invoke_url
}
