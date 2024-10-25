class CcservicesController < InheritedResources::Base

  private

    def ccservice_params
      params.require(:ccservice).permit(:title, :subtitle, :body, :slug, :ccimg1)
    end

end
