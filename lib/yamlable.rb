require 'psych'
require 'yamlable/version'

# Adds to_yaml method to your Objects:
#
#   class Example
#     include Yamlable
#     ...
#
module Yamlable
  def to_yaml
    Psych.dump(self)
  end

  def self.from_yaml(yaml)
    Psych.load(yaml)
  end
end
