require 'ratfink/dsl'



describe Ratfink::DSL do
  let(:valid) do <<-EOF
    component :networking do
    end

    component "integration points" do
    end
    EOF
  end
 
  context "#initialize" do
    context "with no parameters" do
      its(:source) { should be_empty }
    end

    context "with a string parameter" do
      subject { Ratfink::DSL.new("this is a test") }
     
      its(:source) { should_not be_empty }
      its(:source) { should == "this is a test" }
    end
  end

  context "#run" do
    subject do
      Ratfink::DSL.new(source)
    end

    context "with no source" do
      let(:source) { '' }

      it "raises StandardError" do
        expect { subject.run }.to raise_error ArgumentError
      end
    end

    context "with source" do
      let(:source) { valid }

      it "does not raise exception" do
        expect { subject.run }.to_not raise_error ArgumentError
      end

    end
  end

end
