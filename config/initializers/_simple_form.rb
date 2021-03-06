# # Use this setup block to configure all options available in SimpleForm.
# # https://github.com/plataformatec/simple_form/blob/master/lib/generators/simple_form/templates/config/initializers/simple_form.rb

# SimpleForm.setup do |config|
#   # Wrappers are used by the form builder to generate a
#   # complete input. You can remove any component from the
#   # wrapper, change the order or even add your own to the
#   # stack. The options given below are used to wrap the
#   # whole input.
#   config.wrappers :default,
#     tag: :div,
#     class: 'form-row',
#     hint_class: 'form-row--hint',
#     error_class: 'form-row--error' do |b|

#     b.use :html5
#     b.use :placeholder
#     b.optional :maxlength
#     b.optional :minlength
#     b.optional :pattern
#     b.optional :min_max
#     b.optional :readonly

#     # b.use :label_input
#     b.use :label, class: 'form-label'
#     b.use :input, class: 'form-input'
#     b.use :hint,  wrap_with: { tag: :div, class: 'form-hint' }
#     b.use :error, wrap_with: { tag: :div, class: 'form-error' }
#   end

#   config.wrappers :range,
#     tag: :div,
#     class: 'form-row',
#     hint_class: 'form-row--hint',
#     error_class: 'form-row--error' do |b|

#     b.use :html5
#     b.use :placeholder
#     b.optional :maxlength
#     b.optional :minlength
#     b.optional :pattern
#     b.optional :min_max
#     b.optional :readonly

#     # b.use :label_input
#     b.use :label, class: 'form-label'
#     b.use :input, class: 'form-range'
#     b.use :hint,  wrap_with: { tag: :div, class: 'form-hint' }
#     b.use :error, wrap_with: { tag: :div, class: 'form-error' }
#   end

#   config.wrappers :boolean,
#     inline_label: true,
#     label: false,
#     tag: :div,
#     class: 'form-row',
#     hint_class: '--hint',
#     error_class: '--error' do |b|

#     b.use :html5
#     b.optional :readonly

#     # b.use :label_input
#     b.use :label, class: ''
#     b.use :input, class: ''
#     b.use :hint,  wrap_with: { tag: :div, class: 'form-hint' }
#     b.use :error, wrap_with: { tag: :div, class: 'form-error' }
#   end

#   config.wrappers :check_boxes,
#     inline_label: true,
#     label: false,
#     tag: :div,
#     class: 'form-row --checkboxes',
#     item_wrapper_tag: false,
#     item_label_class: 'form-checkbox',
#     hint_class: '--hint',
#     error_class: '--error' do |b|

#     b.use :html5
#     b.optional :readonly

#     b.use :label, class: 'form-label'
#     b.use :input, class: ''
#     b.use :hint,  wrap_with: { tag: :div, class: 'form-hint' }
#     b.use :error, wrap_with: { tag: :div, class: 'form-error' }
#   end

#   config.wrappers :check_icons,
#     inline_label: true,
#     label: false,
#     boolean_style: :inline,
#     tag: :div,
#     class: 'form-row --checkicon',
#     item_wrapper_class: 'form-checkicon',
#     item_label_class: '',
#     hint_class: '--hint',
#     error_class: '--error' do |b|

#     b.use :html5
#     b.optional :readonly
#     b.use :label, class: 'form-label'
#     b.wrapper tag: 'div', class: 'form-checkicons' do |ba|
#       ba.use :input, class: ''
#     end
#     b.use :hint,  wrap_with: { tag: :div, class: 'form-hint' }
#     b.use :error, wrap_with: { tag: :div, class: 'form-error' }
#   end

#   config.wrappers :date,
#     tag: :div,
#     class: 'form-row',
#     hint_class: '--hint',
#     error_class: '--error' do |b|

#     b.use :html5
#     b.use :placeholder
#     b.optional :maxlength
#     b.optional :minlength
#     b.optional :pattern
#     b.optional :min_max
#     b.optional :readonly

#     # b.use :label_input
#     b.use :label, class: 'form-label'
#     b.wrapper tag: 'div', class: 'form-date' do |ba|
#       ba.use :input, class: 'form-input'
#     end
#     b.use :hint,  wrap_with: { tag: :div, class: 'form-hint' }
#     b.use :error, wrap_with: { tag: :div, class: 'form-error' }
#   end

#   # The default wrapper to be used by the FormBuilder.
#   config.default_wrapper = :default

#   # Custom wrappers for input types. This should be a hash containing an input
#   # type as key and the wrapper that will be used for all inputs with specified type.
#   config.wrapper_mappings = {
#     boolean: :boolean,
#     check_boxes: :check_boxes,
#     radio_buttons: :check_boxes,
#     check_icons: :check_icons,
#     date: :date,
#     range: :range
#   }

#   # Define the way to render check boxes / radio buttons with labels.
#   # Defaults to :nested for bootstrap config.
#   #   inline: input + label
#   #   nested: label > input
#   config.boolean_style = :nested

#   # Default class for buttons
#   config.button_class = ''

#   # Method used to tidy up errors. Specify any Rails Array method.
#   # :first lists the first message for each field.
#   # Use :to_sentence to list all errors for each field.
#   # config.error_method = :first

#   # Default tag used for error notification helper.
#   config.error_notification_tag = :div

#   # CSS class to add for error notification helper.
#   config.error_notification_class = 'form-response form-response--alert'

#   # ID to add for error notification helper.
#   # config.error_notification_id = nil

#   # Series of attempts to detect a default label method for collection.
#   config.collection_label_methods = %i[first to_s name title]

#   # Series of attempts to detect a default value method for collection.
#   config.collection_value_methods = %i[second id to_s]

#   # You can wrap a collection of radio/check boxes in a pre-defined tag, defaulting to none.
#   # config.collection_wrapper_tag = nil

#   # You can define the class to use on all collection wrappers. Defaulting to none.
#   # config.collection_wrapper_class = nil

#   # You can wrap each item in a collection of radio/check boxes with a tag,
#   # defaulting to :span.
#   config.item_wrapper_tag = :div

#   # You can define a class to use in all item wrappers. Defaulting to none.
#   # config.item_wrapper_class = nil

#   # How the label text should be generated altogether with the required text.
#   config.label_text = ->(label, required, _explicit_label) { "#{label} #{required}" }

#   # You can define the class to use on all labels. Default is nil.
#   # config.label_class = nil

#   # You can define the default class to be used on forms. Can be overriden
#   # with `html: { :class }`. Defaulting to none.
#   # config.default_form_class = nil

#   # You can define which elements should obtain additional classes
#   # config.generate_additional_classes_for = [:wrapper, :label, :input]
#   config.generate_additional_classes_for = []

#   # Whether attributes are required by default (or not). Default is true.
#   # config.required_by_default = true

#   # Tell browsers whether to use the native HTML5 validations (novalidate form option).
#   # These validations are enabled in SimpleForm's internal config but disabled by default
#   # in this configuration, which is recommended due to some quirks from different browsers.
#   # To stop SimpleForm from generating the novalidate option, enabling the HTML5 validations,
#   # change this configuration to true.
#   config.browser_validations = true

#   # Collection of methods to detect if a file type was given.
#   # config.file_methods = [ :mounted_as, :file?, :public_filename ]

#   # Custom mappings for input types. This should be a hash containing a regexp
#   # to match as key, and the input type that will be used when the field name
#   # matches the regexp as value.
#   # config.input_mappings = { /count/ => :integer }

#   # Namespaces where SimpleForm should look for custom input classes that
#   # override default inputs.
#   # config.custom_inputs_namespaces << "CustomInputs"

#   # Default priority for time_zone inputs.
#   # config.time_zone_priority = nil

#   # Default priority for country inputs.
#   # config.country_priority = nil

#   # When false, do not use translations for labels.
#   # config.translate_labels = true

#   # Automatically discover new inputs in Rails' autoload path.
#   # config.inputs_discovery = true

#   # Cache SimpleForm inputs discovery
#   # config.cache_discovery = !Rails.env.development?

#   # Default class for inputs
#   config.input_class = 'form-input'

#   # Define the default class of the input wrapper of the boolean input.
#   config.boolean_label_class = 'form-checkbox'

#   # Defines if the default input wrapper class should be included in radio
#   # collection wrappers.
#   config.include_default_input_wrapper_class = false

#   # Defines which i18n scope will be used in Simple Form.
#   # config.i18n_scope = 'simple_form'
# end
