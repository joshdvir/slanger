require 'logstash-logger'

module Slanger
  module Logger

    def self.current
      @logger ||= LogStashLogger.new(uri: Slanger::Config.log_uri)
    end

    def self.info(obj)
      self.current.info(obj.merge({ 'service' => 'slanger' }))
    rescue => e
    end

    def log(msg)

    end

    extend self
  end
end