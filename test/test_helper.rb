ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...

    def ensure_tmp_generators_symlink
      return unless Rails.env.test?

      src_bin = File.join(Rails.root, 'bin')
      dest_bin = File.join(destination_root, 'bin')

      FileUtils.ln_s(src_bin, dest_bin) unless File.symlink?(dest_bin)
    end
  end
end
