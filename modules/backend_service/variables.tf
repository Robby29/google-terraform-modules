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

variable "health_check" {
  description = "Name of existing health check to use, disables auto-created health check."
  type        = string
  default     = null
}

variable "health_check_config" {
  description = "Configuration of the auto-created helth check."
  type = object({
    type    = string      # http https tcp ssl http2
    port   = string    # actual health check block attributes
  })
  default = {
    type = "http"
    port = "80"
  }
}

variable "backends" {
  description = "Load balancer backends, balancing mode is one of 'CONNECTION' or 'UTILIZATION'."
  type = list(string)
  default = []
}



variable "labels" {
  description = "Labels set on resources."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Name used for all resources."
  type        = string
}

variable "network" {
  description = "Network used for resources."
  type        = string
}

variable "project_id" {
  description = "Project id where resources will be created."
  type        = string
}

variable "region" {
  description = "GCP region."
  type        = string
}

variable "subnetwork" {
  description = "Subnetwork used for the forwarding rule."
  type        = string
}
