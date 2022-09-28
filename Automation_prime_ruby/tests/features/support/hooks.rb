# frozen_string_literal: true

# :nodoc:
Before do
  @page = lambda do |klass|
    klass.new
  end
end
