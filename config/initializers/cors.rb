module CodeChallengeRails
  module Cors
    def self.regex
      %r{\Ahttps?://([a-zA-Z\d-]+\.){0,}(localhost|test|0.0.0.0|127.0.0.1):?(\d*)\z}
    end
  end

  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins(CodeChallengeRails::Cors.regex)
      resource '*',
               headers: :any,
               credentials: true, #  Sets the Access-Control-Allow-Credentials response header
               methods: %i[get put post options patch delete]
    end
  end
end
