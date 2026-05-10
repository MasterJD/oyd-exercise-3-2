output "invoke_url" {
  description = "Invoke URL for the HTTP API stage."
  value       = aws_apigatewayv2_stage.default.invoke_url
}
