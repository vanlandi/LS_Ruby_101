=begin

def valid_number?(number) #also nice
  Integer(number) rescue nil
end

def valid_number_regex?(input) #regex is an expectation for later
  /^-?\d+$/.match(input))
end

def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

def float?(input)
  Float(input) rescue false
end

=end



def number?(num)
  num.to_i.to_s == num
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

