class Integer
  def method_missing(m, *args, &block)
    /is_(not_)+odd\?/.match?(m) ? ( m.to_s.scan(/not_/).count.odd? ? even? : odd? ) : super
  end
end
