require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/unit'
require 'yamlable'

class Example
  include Yamlable

  attr_reader :foo, :bar, :baz, :waz

  def initialize
    @foo = 'boo'
    @bar = 'blar'
    @baz = %w(ahoy matey)
    @waz = { bleeker: 'meep', monster: 'cookie!!!' }
  end
end

class TestYamlable < Minitest::Test
  def test_yamlable
    ex = Example.new
    why = Yamlable.from_yaml(ex.to_yaml)

    assert_equal ex.class, why.class
    assert_equal [ex.foo, ex.bar, ex.baz, ex.waz],
                 [why.foo, why.bar, why.baz, why.waz]
  end
end
