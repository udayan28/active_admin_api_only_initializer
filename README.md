# Active Admin Api Only Initializer
Active Admin Initializer for Rails API-only.  
It adds middleware and change controller inheritance relationship for [Active Admin](https://github.com/activeadmin/activeadmin).

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'active_admin_api_only_initializer'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install active_admin_api_only_initializer
```

## Usage
After installed Active Admin Api Only Initializer:

```bash
$ rails g active_admin_api_only_initializer:init
```

Now, you can install [Active Admin](https://github.com/activeadmin/activeadmin).  
Follow its Getting started.

## Warning
This gem is suitable for new Rails API-only project.  
DO NOT use at a progressed Rails API-only project.  
It rename the  contents of `app/controllers/application_controller.rb`.
  
If you want to use Active Admin at Rails API-Only project, add middleware below and change `app/controllers/application_controller.rb` inheritance manually.
- Rack::MethodOverride
- ActionDispatch::Flash
- ActionDispatch::Cookies
- ActionDispatch::Session::CookieStore

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/udayan28/active_admin_api_only_initializer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
