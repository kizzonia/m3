class SectionsController < InheritedResources::Base
  before_action :find_sections, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
def index
  @sections = Section.all
  @headers = Header.all

end
def show
  @sections = Section.all
  @headers = Header.all
  @blogs = Blog.all.order('created_at DESC')
  @feedbacks = Feedback.all.order('created_at DESC')

end
  private
  def find_sections
    @section = Section.friendly.find(params[:id])
  end
    def section_params
      params.require(:section).permit(:title, :body, :sub_title, :icon, :sectionimg)
    end

end
