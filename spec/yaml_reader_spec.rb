require 'yaml_reader'

describe YAMLReader do
  before do
    @file = "./spec/fixtures/work_sample.yml"
    @sample = YAMLReader.new @file
  end

  it "has a title" do
    @sample.title.should eq "Work Sample"
  end

  it "adds attributes on the fly" do
    @sample.body = "excellent"
    @sample.body.should eq "excellent"
  end

  it "does not allow its private data to be overridden" do
    Proc.new {
      @sample._data = {}
    }.should raise_error YAMLReader::YAMLReaderException
  end

  it "dumps to YAML format" do
    YAML.load(@sample.dump).should eq(YAML.load_file(@file))
  end

  it "writes out a YAML file with save_as"
  it "writes over a YAML file with save"
  it "throws an exception if save is called without an existing file path"

end
