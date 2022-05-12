require "test/unit"
require_relative "../lib/ue"

class TestHTTP < Test::Unit::TestCase
  def test_methods
    assert_equal true, Ue.method_defined?(:delete)
    assert_equal true, Ue.method_defined?(:post)
    assert_equal true, Ue.method_defined?(:get)
    assert_equal true, Ue.method_defined?(:head)
    assert_equal true, Ue.method_defined?(:put)
    assert_equal true, Ue.method_defined?(:patch)
    assert_equal true, Ue.method_defined?(:options)
    assert_equal true, Ue.method_defined?(:link)
    assert_equal true, Ue.method_defined?(:unlink)
  end

  def test_request
    ue = Ue.new { get("") }
    assert_equal [404, {}, []], ue.call({})
    assert_equal [200, {}, []], ue.call({ "PATH_INFO" => "/", "REQUEST_METHOD" => "GET" })
  end
end
