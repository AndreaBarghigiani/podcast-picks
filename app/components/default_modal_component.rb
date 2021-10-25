class DefaultModalComponent < ViewComponent::Base
  def initialize(id:, title:)
    super
    @id = id
    @title = title
  end
end
