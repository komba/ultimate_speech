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
      speech = ''
      sentences.times do
        speech << self.make_sentence
      end
      speech
    end

    def self.make_sentence
      sentence = ''
      ['first', 'second', 'third', 'four'].each do |type|
        sentence << I18n.t("ultimate.speech.#{type}").split('| ').shuffle.first
      end
      sentence << '.'
    end
  end
end
