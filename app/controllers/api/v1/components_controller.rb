class Api::V1::ComponentsController < Api::V1::ApiController
  before_action :set_component, only: %i[update, destroy]

  def index
    @components = []
    params[:ids].each do |id|
      @components << Component.find(id)
    end
    json_response(@components)
  end

  def create
    @component = Component.create!(component_params)
    json_response(@component, :created)
  end

  def update
    @component.update(component_params)
    head :no_content
  end

  def destroy
    @component.destroy
    head :no_content
  end

  private

  def component_params
    params.permit(:article_id, :content, :type)
  end

  def set_component
    @component = Component.find(params[:id])
  end
end
