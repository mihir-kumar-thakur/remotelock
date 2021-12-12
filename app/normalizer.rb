class Normalizer
  def self.for(format)
    case format
    when :dollar_format
      Normalizers::Dollar.new
    when :percent_format
      Normalizers::Percent.new
    else
      raise "Unsupported parser format"
    end
  end
end
