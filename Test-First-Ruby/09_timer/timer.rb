class Timer
	#Note: attr_accessor defines reader and writer. This way is no need to define get_sec or set_sec.
	attr_accessor :seconds


	def initialize
    	@seconds = 0
  	end

	def time_string

		sec = @seconds%60
		min = @seconds%3600/60
		hr = @seconds/3600

		sprintf("%02d:%02d:%02d", hr, min, sec)
	end
end