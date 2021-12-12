class PeopleController
  FIELDS = ['first_name', 'city', 'birthdate']
  DATE_FORMAT = "%-m/%-d/%Y"

  def initialize(params)
    @params = params
    @file_types = file_types
  end

  def normalize
    results = []

    @file_types.each do |file_type|
      results += Normalizer.for(file_type).normalize(@params[file_type], FIELDS)
    end

    sorted_results = Sorter.sort!(results, FIELDS.index(@params[:order].to_s))
    sorted_results.map{ |string| string.join(", ") }
  end

  private

  attr_reader :params

  def file_types
    @params.map { |_key, _value| _key if _key.to_s.include? '_format' }.compact
  end
end

# p PeopleController.new({dollar_format: 'spec/fixtures/people_by_dollar.txt', percent_format: 'spec/fixtures/people_by_percent.txt', order: :first_name}).normalize

