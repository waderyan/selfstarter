Selfstarter::Application.routes.draw do
  root :to => 'preorder#index'
  match '/preorder'               => 'preorder#index', :via => [:get,:post]
  get 'preorder/checkout'
  match '/preorder/share/:uuid'   => 'preorder#share', :via => :get
  match '/preorder/ipn'           => 'preorder#ipn', :via => :post
  match '/preorder/prefill'       => 'preorder#prefill', :via => [:get,:post]
  match '/preorder/postfill'      => 'preorder#postfill', :via => [:get,:post]
  match '/docs'                   => 'docs#index', :via => [:get]
  match '/docs/faqs'              => 'docs#faqs', :via => [:get]
  match '/docs/who'               => 'docs#who', :via => [:get]
  match '/docs/product'           => 'docs#product', :via => [:get]
  match '/docs/support'           => 'docs#support', :via => [:get]
  match '/docs/blog'              => 'docs#blog', :via => [:get]
  match '/docs/team'              => 'docs#team', :via => [:get]

end
