class Matrix
  attr_accessor :columns, :rows, :splited

  def initialize(string)
    @splited = string.split("\n")
    @rows = get_rows
    @columns = get_columns
  end

  def get_rows
    rows = []
    splited.each do |elem|
      rows.push(elem.split(" ").collect{|i| i.to_i})
    end
    return rows
  end

  def get_columns
    @columns = rows.transpose
    return columns
  end
end
