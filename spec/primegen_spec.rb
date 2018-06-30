RSpec.describe Primegen do
  it "has a version number" do
    expect(Primegen::VERSION).not_to be nil
  end

  it "has a cli" do
    expect(defined?(Primegen::Utility)).to eq("constant")
  end

  describe Primegen::Utility do
  	context "when no options are passed" do
	  	let(:output) { capture(:stdout) {
	  			described_class.start(%w(print))
	  		}
	  	}

	  	it "should print multiplcation table of 10 primes" do
	  		expect(output.include?("| 2     | 3     | 5     | 7     |")).to eq (true)
	  	end
	end

	context "when n is aplphabetic" do
	  	let(:output) { capture(:stderr) {
	  			described_class.start(%w(print -n a))
	  		}
	  	}

	  	it "should raise n should be numeric" do
	  		expect(output).to eq ("Expected numeric value for '-n'; got \"a\"\n")
	  	end
	end

	context "when option n is passed" do
	  	let(:output) { capture(:stdout) {
	  			described_class.start(%w(print -n 20))
	  		}
	  	}

	  	it "should print multiplcation table of n primes" do
	  		expect(output.include?("| 2  | 3  | 5  | 7   | 11  | 13  | 17  | 19  |")).to eq (true)
	  	end
	end

	context "when an invalid command is passed" do
	  	let(:output) { capture(:stderr) {
	  			described_class.start(%w(sprint))
	  		}
	  	}

	  	it "should raise command not found" do
	  		expect(output).to eq ("Could not find command \"sprint\".\n")
	  	end
	end
  end

end
