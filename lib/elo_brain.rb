# frozen_string_literal: true

require 'dry-struct'
require 'dry-validation'
require 'elo_brain/version'
require 'zeitwerk'
loader = Zeitwerk::Loader.for_gem
loader.setup

module EloBrain
  class Error < StandardError; end
end
