class ExampleGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def run_test_generator
    generate "generator", "test"
  end
end
