provider "null" {}

locals {
  nummer = range(0, 1000)
  multiples_of_3_or_5 = [for n in local.nummer : n if n % 3 == 0 || n % 5 == 0]
  summe = sum(local.multiples_of_3_or_5)
}

output "Summe" {
  value = local.summe
}
