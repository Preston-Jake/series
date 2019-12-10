class Series
  def initialize(series)
    @series = series
  end

  def slices(num)
    series = @series.split("")
    if num > series.length
      raise ArguementError.new("Error")
    else
      solution = []
      i = 0
      while i < series.length
        number = series.slice(i , num).join()
        if number.length == num
          solution.push(number)
        end
        i += 1
      end
      solution
    end
  end
end

