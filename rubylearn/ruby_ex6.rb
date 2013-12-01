#arrays
operating_systems = ["Fedora", "SuSE", "RHEL", "Windows", "MacOS"]
linux_systems = ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]

union = operating_systems | linux_systems
intersection = operating_systems & linux_systems
difference = operating_systems - linux_systems

puts "Array operating_systems: #{operating_systems}"
puts "Array linux_systems: #{linux_systems}"

puts "Uniao dos arrays: #{union}"
puts "Interseccao dos arrays: #{intersection}"
puts "Diferenca => operating_systems - linux_systems dos arrays: #{difference}"
