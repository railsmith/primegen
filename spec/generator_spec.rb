RSpec.describe Primegen::Generator do

	subject do
	  described_class.new(20)
	end

	it "is a constant" do
		expect(defined?(Primegen::Generator)).to eq("constant")
	end

	it "responds to run" do
		expect(subject.respond_to?(:run)).to eq(true)
    end

    it "returns first n primes" do
    	expect(subject.run).to eq([1,2,3,5,7,11,13,17,19])
    end

    it "has instance variable n" do
    	expect(subject.n).to eq(20)
    end
end