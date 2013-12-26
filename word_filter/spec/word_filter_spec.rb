require 'spec_helper'

describe WordFilter do
  describe WordFilter::Filter do
    it 'initialized with array of words' do
      filter = WordFilter::Filter.new('hoge', 'huga', '123')
    end

    context 'initialize and' do
      subject { WordFilter::Filter.new('hoge', 'huga', '123') }

      it 'detect NG words when they are contained' do
        expect(subject.detect('hoge')).to be_true
      end

      it "don't detect NG words when they aren't contained" do
        expect(subject.detect('Yui-chan')).to be_false
      end

      it 'replace NG words when they are contained' do
        expect(subject.censor('Im hogehuga123 from Shiga-pref.', 'Taro')).to eq(
          'Im TaroTaroTaro from Shiga-pref.')
      end

      it "don't replace NG words when they aren't contained" do
        expect(subject.censor('Im Yui-chan from Shiga-pref.', 'Taro')).to eq(
          'Im Yui-chan from Shiga-pref.')
      end
    end
  end
end
