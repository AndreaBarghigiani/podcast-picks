class StyledComponent < ViewComponent::Base
  def initialize(leading_paragraph: false)
    super
    @leading_paragraph = leading_paragraph
  end

  def classes
    c = ['styled']
    c << 'styled--leading-paragraph' if @leading_paragraph
    c.join(' ')
  end

  def call
    content_tag :div, content, class: classes
  end
end
