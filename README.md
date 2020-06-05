Virtus::DirtyAttribute
======================

Support for dirty tracking of virtus attributes.

### Usage

```ruby
  require 'virtus-drity_attribute'

  class Post
    include Virtus.model
    include Virtus::DirtyAttribute

    attribute :title,   String
    attribute :content, String
    attribute :meta,    Hash
  end

  post = Post.new(:title => 'Foo', :meta => { :tags => ['red', 'green'] })

  post.dirty? # => false

  post.title = 'Bar'

  post.dirty? # => true

  post.attribute_dirty?(:title) # => true

  post.attribute_dirty?(:title, from: 'Foo', to: 'Bar') # => true

  post.meta[:tags] << 'blue'

  post.attribute_dirty?(:meta) # => true

  post.dirty_attributes # => {:title => 'Bar', :meta=>{:tags=>["red", "green", "blue"]}}
```

### Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

### Copyright

Copyright (c) 2011 Jingwen Owen Ou. See LICENSE for details.