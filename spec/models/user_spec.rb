require 'rails_helper'

RSpec.describe User, type: :model do

  let(:params) {{name: "かとう"}}

it "年齢２０：ユーザーの名前が取得できること" do
  params.merge!(age: 20)
  user = User.new(params)
  expect(user.disp_user).to eq "かとうさん"
end

it "年齢１５：ユーザーの名前が取得できること" do
  params.merge!(age: 15)
  user = User.new(params)
  expect(user.disp_user).to eq "かとうくん"
end

it "年齢５：ユーザーの名前が取得できること" do
  params.merge!(age: 5)
  user = User.new(params)
  expect(user.disp_user).to eq "かとうちゃん"
end

it "適切な値ではありません" do
  params.merge!(age: -1)
  user = User.new(params)
  expect(user.disp_user).to eq "適切な値ではありません"
end

end