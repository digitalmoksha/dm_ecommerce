Rails.application.routes.draw do

  scope ":locale" do
    devise_for :users, controllers: { registrations: "registrations", confirmations: 'confirmations' }
  end

  themes_for_rails

  mount DmCore::Engine, :at => '/'
  mount DmEcommerce::Engine => "/dm_ecommerce"
  
  scope ":locale" do
    get   '/index',                 controller: 'dm_cms/pages', action: :show, slug: 'index', as: :index
  end
  
end
