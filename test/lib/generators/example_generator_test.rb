require "test_helper"
require "generators/example/example_generator"

class ExampleGeneratorTest < Rails::Generators::TestCase
  tests ExampleGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination, :ensure_tmp_generators_symlink

  test "generator runs without errors" do
    assert_nothing_raised do
      run_generator ["arguments"]
    end
  end
end
