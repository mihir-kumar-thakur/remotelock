module Normalizers
  class Percent < Base
    def normalize(file_path, fields)
      super(file_path, fields, '%')
    end
  end
end
