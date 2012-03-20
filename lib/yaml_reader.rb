require 'yaml'
require 'ostruct'

class YAMLReader < OpenStruct

  def initialize yaml_file_path
    @yaml_file_path = yaml_file_path
    super(YAML.load_file(yaml_file_path))
  end

  def dump
    marshal_dump.reduce({}) { |h, (k,v)| h[k.to_s]=v; h}.to_yaml
  end

  def save_as file_path
    File.open(file_path, 'w') { |f| f.write dump }
  end

  def save
    save_as @yaml_file_path
  end

end
