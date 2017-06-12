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

				def log_it(input, *opts)
					::Rails.logger.fatal "XDBG>>>#{input.inspect}"
					input
				end

				def inspect_it(input, *opts)
					input.inspect.to_s
				end

				def debug_it(input, *opts)
					binding.pry
				end
			end
		end
	end
end

