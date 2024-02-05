# Can't load turbo-rails without Action Cable starting in Rails 7.1.2
# [https://github.com/hotwired/turbo-rails/issues/512#issuecomment-1806570740]
# TODO: remove once issue above is fixed (this app isn't using actioncable so ideally we dont need to load anythig related to it)
Rails.autoloaders.once.do_not_eager_load("#{Turbo::Engine.root}/app/channels")
