require 'rspec'
require 'alfa_bank'

def build_params(keys)
  h = {}
  keys.each do |k|
    h[k] = "#{rand(1000)}"
  end
  h
end
