module Locomotive
	module LiquidExtensions
		module Filters
			module Collection
				def chunk_by(input, *opts)
					input.each.to_a.each_slice(opts[0]).to_a
				end
			end
		end
	end
end

