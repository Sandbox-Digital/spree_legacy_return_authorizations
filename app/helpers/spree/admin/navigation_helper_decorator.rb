Spree::Admin::NavigationHelper.module_eval do
  def tab_with_legacy_return_authorizations(*args)
    if args.first == :orders
      options = args.pop if args.last.is_a?(Hash)
      args << :legacy_return_authorizations
      args << options
    end
    tab_without_legacy_return_authorizations(*args)
  end

  alias_method :tab_without_legacy_return_authorizations, :tab
  alias_method :tab, :tab_with_legacy_return_authorizations
end
