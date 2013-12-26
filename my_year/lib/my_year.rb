require "my_year/version"

module MyYear
  class MyYear
    def initialize(year)
      @year = year
    end

    def to_s
      @year.to_s
    end

    def leap?
      (@year % 4).zero? and (not (@year % 100).zero? or (@year % 400).zero?)
    end
  end
end
