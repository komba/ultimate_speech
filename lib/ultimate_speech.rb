require "i18n"

mydir = File.dirname(__FILE__)
I18n.load_path += Dir[File.join(mydir, 'locales', '*.yml')]
I18n.reload!

module UltimateSpeech
  SENTENCES_COUNT = 10

  class Config
    def self.locale=(locale)
      I18n.locale = locale
    end
  end

  class Base
    def self.generate(sentences=SENTENCES_COUNT)
      Array.new(sentences) { self.make_sentence }.join
    end

    def self.make_sentence
      ['first', 'second', 'third', 'four'].map{|type| I18n.t("ultimate.speech.#{type}").split('| ').shuffle.first }.join << '. '
    end
  end
end
