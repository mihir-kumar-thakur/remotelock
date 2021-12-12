class Sorter
  def self.sort!(people_data, sort_by_index)
    people_data.sort_by { |ele| [ele[sort_by_index]] }
  end
end
