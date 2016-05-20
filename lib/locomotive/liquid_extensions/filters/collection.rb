module Locomotive
	module LiquidExtensions
		module Filters
			module Collection
				def chunk_by(input, *opts)
					input.each.to_a.each_slice(opts[0]).to_a
				end

				def slice(input, *opts)
					input.each.to_a.slice(opts[0].to_i, (opts[1] || 1).to_i)
				end
			end
		end
	end
end

