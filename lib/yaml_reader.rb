require 'yaml'
require 'ostruct'

class YAMLReader < OpenStruct

  def initialize yaml_file_path
    super(YAML.load_file(yaml_file_path))
  end

  def dump
    marshal_dump.reduce({}) {|h,(k,v)| h[k.to_s]=v; h}.to_yaml
  end

end
