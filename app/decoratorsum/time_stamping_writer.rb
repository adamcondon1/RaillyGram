class TimeStampingWriter < WriterDecorator
	def initialize(component)
		super(component)
	end

	def write_line(line)
		@real_writer.write_line("#{Time.new}: #{line}")
	end
end
