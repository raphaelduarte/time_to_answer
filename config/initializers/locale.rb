I18n.load_path += Dir[File.expand_path("config/locales") + "/*.yml"]
I18n.available_locales = [:en, 'pt-BR'] # (note that `en` is already the default!)

I18n.default_locale = 'pt-BR'

