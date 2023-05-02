
require 'json'
require 'rubygems'
require 'bundler/setup'
require 'date'


module CurrencyExchange

  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.

  def self.rate (date, from_currency, to_currency)
    file_path = 'data/eurofxref-hist-90d.json'
    data = File.read(file_path)
    json_data = JSON.parse(data)
    
    formatted_date = "#{date}"

    # Checking date exists
    unless json_data.key?(formatted_date)
      raise "no rate for the date provided"
    end

    # Calculating from_value, if nil raising an exception
    from_value = json_data[formatted_date][from_currency] 
      raise 'Unable to calculate the exchange rate requested' if from_value.nil?

    # Checking if to_currency is EUR, if it is setting to_value to 1, if not finding from json_data. If nil raising an exception
    to_value = to_currency == "EUR" ? 1 : json_data[formatted_date][to_currency]
      raise 'Unable to calculate the exchange rate requested' if to_value.nil?

    # Calculating exchange rate using to & from values
    to_value / from_value

  end  
end


