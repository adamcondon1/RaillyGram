require_relative 'simple_writer'
require_relative 'numbering_writer'
require_relative 'time_stamping_writer'
require_relative 'check_summing_writer'

component = SimpleWriter.new('final.txt')
component.write_line("Hello out there 1")
writer = NumberingWriter.new(component)
writer.write_line("Hello out there 2")

writer = TimeStampingWriter.new(NumberingWriter.new(CheckSummingWriter.new(SimpleWriter.new('final.txt'))))
writer.write_line("Hello out there 3")

writer = CheckSummingWriter.new(NumberingWriter.new( TimeStampingWriter.new(SimpleWriter.new('final.txt'))))
writer.write_line("Hello out there 4")
puts("checksum: #{writer.check_sum}")
writer.write_line("Hello out there 5")
puts("checksum: #{writer.check_sum}")
