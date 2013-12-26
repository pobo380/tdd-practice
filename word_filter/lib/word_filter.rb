require "word_filter/version"

module WordFilter
  class Filter
    def initialize(*ng_words)
      @ng_words = ng_words
    end

    def detect(target_str)
      @ng_words.any?{|ng_word| target_str.include? ng_word }
    end

    def censor(target_str, replacement)
      escaped = @ng_words.map{|ng_word| Regexp.escape(ng_word)}
      regexp  = Regexp.new(escaped.join('|'))

      target_str.gsub(regexp, replacement)
    end
  end
end
