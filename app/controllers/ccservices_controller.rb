class CcservicesController < InheritedResources::Base
  before_action :find_ccservices, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @abouts = About.all
    @headers = Header.all
    @ccservices = Ccservice.all

  end

  def show
    @sections = Section.all
      @headers = Header.all
      @blogs = Blog.all.order('created_at DESC')
      @feedbacks = Feedback.all.order('created_at DESC')
      @ccservices = Ccservice.all

  end
  private
  def find_ccservices
    @ccservice = Ccservice.friendly.find(params[:id])
  end
    def ccservice_params
      params.require(:ccservice).permit(:title, :subtitle, :body, :slug, :ccimg1)
    end

end
