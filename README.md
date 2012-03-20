# Yaml Reader

Written for fun one evening as an exercise in Ruby.  Perhaps you have a YAML file:

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
# "Amazing Content"
```

## Add and update data 
```ruby
yaml.title = "Even More Amazing Content!"
yaml.description = "..."

yaml.title
# "Even More Amazing Content!"

yaml.description
# "..."
```

## Dump the data to string to be written to new YAML file

```ruby
yaml.dump

# ---
# title: Even More Amazing Content!
# description: ...
```

# TODO

## Write the updated YAML data to file
```ruby
yaml.save
# true

yaml.save_as '/path/to/new_yaml_file.yaml'
# true
```
