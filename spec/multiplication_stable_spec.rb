RSpec.describe Primegen::MultiplicationTable do
	it "is a constant" do
		expect(defined?(Primegen::MultiplicationTable)).to eq("constant")
	end

	it "responds to output" do
		expect(described_class.respond_to?(:output)).to eq(true)
	end

	it "accepts two arguments" do
		expect(described_class.output([], 10)).to be_an_instance_of(Terminal::Table)
	end

	context "when n=10" do
		let(:table) { described_class.output([1,2,3,5,7], 10) }
		it "should output 4 rows" do
			expect(table.rows.count).to eq(4)
		end
    end
end