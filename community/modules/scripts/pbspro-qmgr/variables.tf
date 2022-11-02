/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "execution_hostname_prefix" {
  description = "Name prefix for execution hosts"
  type        = string
}

variable "execution_host_count" {
  description = "Number of execution hosts to provision"
  type        = number
}

variable "client_hostname_prefix" {
  description = "Name prefix for execution hosts"
  type        = string
}

variable "client_host_count" {
  description = "Number of execution hosts to provision"
  type        = number
  default     = 0
}

variable "server_conf" {
  description = "A sequence of qmgr commands in format as generated by qmgr -c 'print server'"
  type        = string
  default     = "# empty qmgr configuration file"

  validation {
    condition     = var.server_conf != null && var.server_conf != ""
    error_message = "server_conf must be set to a non-empty string"
  }
}