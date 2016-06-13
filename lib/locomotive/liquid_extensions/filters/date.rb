require 'date'
require 'time'

module Locomotive
	module LiquidExtensions
		module Filters
			module Date
				def month_name(input)
					Date::MONTHNAMES[Time.parse(input.to_s).month].downcase
				end
				def parse_time(input)
					Time.parse(input)
				end

				def parse_date(input)
					Date.parse(input)
				end

				def parse_datetime(input)
					DateTime.parse(input)
				end

				def next_date(input, *opts)
					in_date = if input.class == String
								  DateTime.parse input
							  else
								  input.to_datetime
							  end
					in_date.send(
						case opts[1]
						when 'years'
							:next_year
						when 'months'
							:next_month
						else
							:next_day
						end,
						opts[0].to_i
					)
				end

				def prev_date(input, *opts)
					in_date = if input.class == String
								  DateTime.parse input
							  else
								  input.to_datetime
							  end
					in_date.send(
						case opts[1]
						when 'years'
							:prev_year
						when 'months'
							:prev_month
						else
							:prev_day
						end,
						opts[0].to_i
					)
				end
			end
		end
	end
end
