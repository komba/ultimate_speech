require 'spec_helper'

describe UltimateSpeech::Config do
  describe '.locale' do
    it 'should set locale' do
      UltimateSpeech::Config.locale = :ru
      I18n.locale.should eq(:ru)
    end

    it 'should translate normal, if valid locale is set' do
      UltimateSpeech::Config.locale = :ru
      I18n.t('ultimate.speech.first').scan(/(Товарищи|стороны|забывать|Таким|Повседневная)/).first.should_not be_nil
    end

    it 'should set wrong locale, but should not translate' do
      UltimateSpeech::Config.locale = :not_valid_locale
      I18n.locale.should eq(:not_valid_locale)
      I18n.t('ultimate.speech.first').should eq('translation missing: not_valid_locale.ultimate.speech.first')
    end
  end
end
