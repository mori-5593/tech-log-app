require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module TeclogApp
  class Application < Rails::Application
    config.load_defaults 8.1
    config.autoload_lib(ignore: %w[assets tasks])

# コマンドで余分なファイルが自動生成されるのを制限する
    config.generators do |g|
      g.assets false # css.jsファイルが無駄に生成されるのを防ぐ
      g.helper false # helperファイルという主にviewファイルで使えるようなメソッドを管理するためのファイルを自動で生成されるのを防ぐ
      g.test_framework :rspec # RSpecというテストフレームを実施するため、他のテストフレームは生成しない。
    end

    config.i18n.default_locale = :ja
  end
end
