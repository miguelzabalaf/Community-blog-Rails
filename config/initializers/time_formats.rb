Time::DATE_FORMATS[:w3cdtf] = lambda { |time| time.strftime("%Y-%m-%dT#{time.formatted_offset}") }