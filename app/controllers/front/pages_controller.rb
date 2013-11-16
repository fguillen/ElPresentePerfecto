class Front::PagesController < Front::FrontController
  layout :decide_layout

  def show
    render "front/pages/#{params[:id]}"
  end

private

  def decide_layout
    case params[:id]
      when "home" then "front/front_basic"
      else "/front/front"
    end
  end
end