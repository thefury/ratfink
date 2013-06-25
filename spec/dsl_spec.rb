require 'ratfink/dsl'



describe Ratfink::DSL do
  let(:valid) do <<-EOF
    component :networking do
      check "windows shares" do
      end

      check "NFS mounts" do
      end
    end

    component "integration points" do
      check "connection with API endpoint" do
        puts "inside check"
      end
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

      it "calls component from the DSL file" do
        subject.should_receive(:component).exactly(2).times
        subject.run
      end

      it "calls check from the DSL file" do
        subject.should_receive(:check).exactly(3).times
        subject.run
      end
    end
  end

end
