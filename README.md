# Yaml Reader

Written for fun as an exercise in Ruby.  Perhaps you have a YAML file:

```yaml
---
title: Amazing Content
```

## Instantiate a YAML Reader object

```ruby
yaml = YAMLReader.new 'path/to/yaml_file.yaml'
```

## Fetch data from the file
```ruby
yaml.title
# => "Amazing Content"
```

## Add and update data 
```ruby
yaml.title = "Even More Amazing Content!"
yaml.description = "..."

yaml.title
# => "Even More Amazing Content!"

yaml.description
# => "..."
```

## Dump the data to string to be written to new YAML file

```ruby
yaml.dump
```
