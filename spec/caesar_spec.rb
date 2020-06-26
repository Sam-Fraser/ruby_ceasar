#spec/caesar_spec.rb

require './lib/caesar'

describe "#get_new_num" do
  it "returns the original input number if under 25" do
    expect(get_new_num(5)).to eql(5)
  end

  it "returns adjusted input number if over 25" do
    expect(get_new_num(30)).to eql(4)
  end

  it "returns adjusted input number if under -25" do
    expect(get_new_num(-30)).to eql(-4)
  end
end

describe "#caesar_cipher" do
  it "returns letters moved by a certain amount" do
    expect(caesar_cipher("a",5)).to eql("f")
  end

  it "returns capital letters when capitals are input" do
    expect(caesar_cipher("A",5)).to eql("F")
  end
end