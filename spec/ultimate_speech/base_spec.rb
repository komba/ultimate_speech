require 'spec_helper'

describe UltimateSpeech::Base do
  let(:speech) { UltimateSpeech::Base.generate }
  let(:sentence) { UltimateSpeech::Base.make_sentence }

  describe '.generate' do
    context '.ru' do
      before { I18n.locale = :ru }

      it 'should generate text' do
        speech.should be_a(String)
      end

      it 'should contain some russian words' do
        speech.scan(/(Товарищи|стороны|забывать|Таким|Повседневная)/).first.should_not be_nil
      end
    end

    context '.uk' do
      before { I18n.locale = :ru }

      it 'should generate text' do
        speech.should be_a(String)
      end

      it 'should contain some ukrainian words' do
        speech.scan(/(Друзі|боку|забуваті|Таким|Щоденна)/).first.should_not be_nil
      end
    end

  end

  describe '.make_sentence' do
    it 'should generate one sentence' do
      sentence.should be_a(String)
    end

    it 'should have a dot at end of sentence' do
      sentence.scan(/(\.{1}\ )\z/).first.should_not be_nil
    end
  end
end
