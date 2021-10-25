class ButtonComponent < ViewComponent::Base
  def initialize(
    href: nil,
    type: 'button',
    name: nil,
    classname: nil,
    data: nil,
    icon: nil,
    icon_only: false,
    fill: nil,
    outline: nil,
    color: nil,
    size: nil,
    display: nil,
    disabled: false
  )
    super
    @href = href
    @type = type
    @name = name
    @data = data
    @size = size
    @display = display
    @disabled = disabled
    @fill = fill
    @color = color
    @outline = outline
    @icon = icon
    @icon_only = icon_only
    @classname = classname
  end

  def classes
    c = ['button']
    c << "button--size-#{@size}" if @size
    c << "button--display-#{@display}" if @display
    c << "button--fill-#{@fill}" if @fill
    c << "button--color-#{@color}" if @color
    c << "button--outline-#{@outline}" if @outline
    c << 'button--icon-only' if @icon_only
    c << @classname if @classname
    c.join(' ')
  end

  def call
    the_content = raw %{
      #{inline_svg_pack_tag("media/icons/#{@icon}.svg", aria_hidden: true) if @icon}
      <span>#{content}</span>
    }

    if @href
      link_to the_content,
        @href,
        class: classes,
        data: @data,
        title: (content.strip if @icon_only)
    else
      button_tag the_content,
        type: @type,
        disabled: @disabled,
        name: @name,
        class: classes,
        data: @data,
        title: (content.strip if @icon_only)
    end
  end
end
