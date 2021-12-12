module Normalizers
  class Base
    def normalize(file_path, fields, spilt_by)
      headers = File.foreach(file_path, chomp: true).first.split(spilt_by).map(&:strip)
      fields_indexes = fields.map { |field| headers.find_index(field) }
      results = []

      File.foreach(file_path, chomp: true,).with_index do |line, line_num|
        next if line_num.zero?

        line_array = line.split(spilt_by).map(&:strip)

        if fields.include? 'birthdate'
          birthdate_index = headers.index('birthdate')

          line_array[birthdate_index] = Date.parse(line_array[birthdate_index]).strftime(PeopleController::DATE_FORMAT)
        end

        if fields.include? 'city'
          city_index = headers.index('city')
          if line_array[city_index].upcase == line_array[city_index]
            line_array[city_index] = City.list[line_array[city_index]]
          end
        end

        results << line_array.values_at(*fields_indexes)
      end

      results
    end
  end
end
