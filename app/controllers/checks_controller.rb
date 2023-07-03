# typed: strict

class ChecksController < ActionController::Base
  extend T::Sig

  sig { void }
  def healthz
    return render plain: '❌ - DB connection failed. Did you setup the DB?', status: 500 unless db_alive?

    render plain: "✅ - #{current_version}", status: 200
  end

  sig { returns(String) }
  private def current_version
    @current_version = T.let(@current_version, T.nilable(String))
    @current_version ||= ENV.fetch('GIT_SHA', nil)
    @current_version ||= begin
      `git rev-parse HEAD`.strip
    rescue StandardError
      'unknown version'
    end
  end

  sig { returns(T::Boolean) }
  def db_alive?
    ActiveRecord::Base.connection.active?
  rescue StandardError => e
    puts e.message
    false
  end
end
