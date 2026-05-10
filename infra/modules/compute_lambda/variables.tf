variable "environment" {
  description = "Deployment environment name."
  type        = string
}

variable "name" {
  description = "Base name for resources."
  type        = string
}

variable "memory_size" {
  description = "Lambda memory size in MB."
  type        = number
  default     = 128
}

variable "architectures" {
  description = "Lambda architectures. Valid values: [\"arm64\"] or [\"x86_64\"]."
  type        = list(string)
  default     = ["arm64"]

  validation {
    condition     = length(var.architectures) == 1 && contains(["arm64", "x86_64"], var.architectures[0])
    error_message = "architectures must be [\"arm64\"] or [\"x86_64\"]."
  }
}
