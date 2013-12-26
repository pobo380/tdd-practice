# coding: utf-8

require 'spec_helper'

describe MyYear do
  describe MyYear::MyYear do
    it '整数で初期化できる' do
      MyYear::MyYear.new(1234)
    end

    it '保持している年を文字列で返す' do
      MyYear::MyYear.new(1234).to_s
    end

    context '1999年の時' do
      subject { MyYear::MyYear.new(1999) }

      it 'うるう年でない' do
        expect(subject.leap?).to be_false
      end
    end

    context '2004年の時' do
      subject { MyYear::MyYear.new(2004) }

      it 'うるう年である' do
        expect(subject.leap?).to be_true
      end
    end

    context '2000年の時' do
      subject { MyYear::MyYear.new(2000) }

      it 'うるう年である' do
        expect(subject.leap?).to be_true
      end
    end

    context '2100年の時' do
      subject { MyYear::MyYear.new(2100) }

      it 'うるう年でない' do
        expect(subject.leap?).to be_false
      end
    end
  end
end
