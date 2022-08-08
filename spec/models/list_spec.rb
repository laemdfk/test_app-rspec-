# frozen_string_literal: true

require 'rails_helper'


RSpec.describe List, "モデルのテスト", type: :model do
  describe '実際に保存してみる' do
   it "有効な投稿内容の場合は保存されるか" do
	      expect(FactoryBot.build(:list)).to be_valid
    end
  end
end


# テスト部はitの中に期待値（エクスペクテーション部）と実際の値（マッチャー部）を比較してテストを行うのがRSpecの基本