module ApplicationHelper
  def site_name
    'Rails Boilerplate'
  end

  def class_string(css_map)
    css_map.find_all(&:last).map(&:first).join(' ')
  end

  def tel_to(tel, text: nil)
    groups = tel.to_s.scan(/(?:^\+)?\d+/)
    link_to (text || tel), "tel:#{groups.join '-'}"
  end

  # for both remote and usual forms
  def form_response(form = nil, props = {})
    message_success = 'The form has been sucessfully submitted!'
    message_success_location = 'One moment…'
    message_error = 'Oops! Please fix the fields and submit again.'
    display_error = form && form.object.errors.any?

    messages = {
      message_success: props[:message_success] || message_success,
      message_success_location: props[:message_success_location] || message_success_location,
      message_error: props[:message_error] || message_error
    }

    classes = class_string({ "form-response": true, "form-response--error": display_error })

    content_tag :div,
                (display_error ? messages[:message_error] : ''),
                class: classes,
                data: messages
  end
end
