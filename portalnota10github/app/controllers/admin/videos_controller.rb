class Admin::VideosController < Admin::ApplicationController

  record_select :search_on => 'nome', :model => :video, :per_page => 5, :order_by => "nome", :select => [:nome]

  active_scaffold :video do |t|
  end

end
