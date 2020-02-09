module ActiveAdminApiOnlyInitializer
  class InitGenerator < Rails::Generators::Base
    desc "Rewrite files for preparing Active Admin installation"

    `mkdir -p app/assets/config && echo '{}' > app/assets/config/manifest.js`
    path = File.expand_path('config/application.rb')
    replacement = <<-EOS
config.api_only = true
    # For Active Admin
    config.middleware.use Rack::MethodOverride
    config.middleware.use ActionDispatch::Flash
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
    EOS

    buffer = File.open(path, 'r+').read
    buffer.gsub!(/(config.api_only = true)/, replacement)
    File.open(path, 'w').write(buffer)

    api_controller_text = "class ApiController < ActionController::API\nend\n"
    app_controller_text = "class ApplicationController < ActionController::Base\nend\n"

    File.open('app/controllers/api_controller.rb', 'w').write(api_controller_text)
    File.open('app/controllers/application_controller.rb', 'w').write(app_controller_text)

    desc "Finished!\n You can install Active Admin!"
  end
end