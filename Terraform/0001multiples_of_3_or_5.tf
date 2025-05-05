/*
 * Terraform v1.9.8
 * 0001multiples_of_3_or_5.tf
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 */

provider "null" {}

locals {
  nummer = range(0, 1000)
  multiples_of_3_or_5 = [for n in local.nummer : n if n % 3 == 0 || n % 5 == 0]
  summe = sum(local.multiples_of_3_or_5)
}

output "Summe: " {
  value = local.summe
}
