class YAMLReader

  class YAMLReaderException < Exception; end

  def initialize yaml_file_path
    @_data = {}
    YAML.load_file(yaml_file_path).each do |key, value|
      add_pair key, value
    end
  end

  def dump
    YAML.dump @_data
  end

  def method_missing symbol, *arguments, &block
    if symbol.match /_data/
      raise YAMLReaderException, "Do not touch _data"
    elsif symbol.to_s =~ /^(.*)=$/
      add_pair $1, *arguments
    elsif @_data.include? symbol.to_s
      @_data[symbol.to_s]
    else
      super
    end
  end
  
  private 

  def add_pair key, value
    @_data[key] = value
  end

end
