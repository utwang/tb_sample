class Theme < ActiveRecord::Base
  class Create < Trailblazer::Operation
    # model Theme, :create
    contract do
      property :title
      property :content
    end

    def process(params)
      @model = Theme.new
      validate(params[:theme], @model) do |f|
        f.save
      end
    end
  end
end
