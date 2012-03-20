# Yaml Reader

Written for fun one evening as an exercise in Ruby.  My goal was an easy way to load any YAML file and interact with it using dot notation.

Perhaps you have a YAML file:

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

## Write the updated YAML data to file

```ruby
yaml.save_as '/path/to/new_yaml_file.yaml'
# true
```

```ruby
yaml.save
# true

