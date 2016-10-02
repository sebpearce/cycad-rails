module MoneyHelper
  def self.format_as_money(x)
    "%.2f" % x.to_f
  end
end
