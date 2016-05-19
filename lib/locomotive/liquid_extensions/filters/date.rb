module Locomotive
	module LiquidExtensions
		module Filters
			module Date
				def parse_time(input)
					Time.parse(input)
				end

				def next_date(input, *opts)
					p input
					p opts
				end

				def prev_date(input, *opts)
					p input
					p opts
				end
			end
		end
	end
end
