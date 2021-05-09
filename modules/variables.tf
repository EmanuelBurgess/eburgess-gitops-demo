variable "region" {
  type        = string
  description = "region"
}

variable "zone" {
  type        = string
  description = "zone"
}

variable "m_type" {
  type        = string
  description = "machine type"
}

variable "http" {
  type        = string
  description = "port"
}

variable "https" {
  type        = string
  description = "port"
}

variable "ig_name" {
  type        = string
  description = "instance group name"
}

variable "c_name" {
  type        = string
  description = "computer instance name"
}

variable "c_name2" {
  type        = string
  description = "computer instance name"
}

variable "image" {
  type        = string
  description = "image name"
}

variable "network" {
  type        = string
  description = "network type"
}

variable "project_name" {
  type        = string
  description = "project name"
}

variable "b_script" {
  type        = string
  description = "script name"
}

variable "b_script2" {
  type        = string
  description = "script name"
}

variable "script_loc" {
  type        = string
  description = "script location"
}

variable "fw_name" {
  type        = string
  description = "firewall name"
}

variable "creds" {
  type        = string
  description = "credentials name"
}