# frozen_string_literal: true

module EloBrain
  class Constants
    def read(*constante_path)
      read_from&.dig(*constante_path)
    end

    private

    def read_from
      YAML.safe_load(File.read(".elo_brain.yml"))
    end
  end
end
