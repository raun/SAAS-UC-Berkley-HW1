class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(arg)
    sing_currency = arg.to_s.gsub( /s$/,'')
    if @@currencies.has_key?(sing_currency)
      self / @@currencies[sing_currency]
    else
      super
    end
  end
end

class String
  def palindrome?
    self.downcase.gsub(/[^a-z]/,'').reverse==self.downcase.gsub(/[^a-z]/,'')
  end
end

module Enumerable
    def palindrome?
            return self.to_a==self.to_a.reverse
    end
end
