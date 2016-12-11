require "simplecov"
SimpleCov.start

require "rspec"
require_relative "../lib/mother"
require_relative "../lib/father"
require_relative "../lib/child"

RSpec.describe Child do
  let(:child) { Child.new(Mother.new, Father.new) }

  context "when asking mother without scarf and without homework" do
    it "isn't permitted to walk" do
      expect(
        child.walk_permitted?(:mother)
      ).to be false
    end
  end

  context "when asking mother with scarf and with homework" do
    it "is permitted to walk" do
      child.put_on_scarf!
      child.do_homework!
      expect(
        child.walk_permitted?(:mother)
      ).to be true
    end
  end
end
