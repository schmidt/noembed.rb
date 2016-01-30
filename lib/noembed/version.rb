module NoEmbed::Version
  MAJOR = 1
  MINOR = 0
  PATCH = 0

  STRING = [MAJOR, MINOR, PATCH].join(".")

  class << self
    def inspect
      STRING
    end
    alias_method :to_s, :inspect
  end
end

NoEmbed::VERSION = NoEmbed::Version::STRING
