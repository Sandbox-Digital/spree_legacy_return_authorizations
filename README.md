# Spree Legacy Return Authorizations

This is an extension for users migrating from legacy versions of Spree (2.3.x and prior) which had a different representation of and handling for return authorizations.

When upgrading from a prior version of Spree to Spree 2.4.x, simply include this extension in your application's Gemfile and your old data will be preserved in separate tables (e.g., "spree_legacy_return_authorizations") and columns (e.g. "spree_inventory_units.legacy_return_authorization_id").

This extension maintains the legacy admin interfaces for viewing and closing out (receiving/canceling) any existing legacy return authorizations. It does not allow creating any new legacy return authorizations.  New return authorizations should be handled through the new returns system included in Spree 2.4.

If an order has existing legacy return authorizations then an additional admin menu item "Legacy Return Authorizations" will appear in the admin interface for that order (/admin/orders/XXX/edit).

---

## Installation

Add to your `Gemfile`:

```ruby
gem 'spree_legacy_return_authorizations', github: 'spree-contrib', branch: 'master'
```

Bundle your dependencies and run the installation generator:

```bash
bundle && bundle exec rails g spree_legacy_return_authorizations:install
```

---

## Testing

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle && bundle exec rake
```

When testing your applications integration with this extension you may use it's factories. Simply add this require statement to your spec_helper:

```ruby
require 'spree_legacy_return_authorizations/factories'
```

## Contributing

See corresponding [guidelines][1]

---

## License

Copyright (c) 2011-2015 [Bonobos, Inc.][2], and other [contributors][3], released under the [New BSD License][4]

[1]: https://github.com/spree-contrib/spree_legacy_return_authorizations/blob/master/CONTRIBUTING.md
[2]: https://github.com/bonobos
[3]: https://github.com/spree-contrib/spree_legacy_return_authorizations/contributors
[4]: https://github.com/spree-contrib/spree_legacy_return_authorizations/blob/master/LICENSE.md

Copyright (c) 2014-2015 Bonobos, Inc. and contributors, released under the New BSD License
