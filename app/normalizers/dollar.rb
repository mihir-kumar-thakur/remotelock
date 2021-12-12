module Normalizers
  class Dollar < Base
    def normalize(file_path, fields)
      super(file_path, fields, '$')
    end
  end
end
