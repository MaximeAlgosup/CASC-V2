module FormComponentHelper

    def textField(form, field, title, object, value = nil, disabled = false, autocomplete = "off", custom = false, options = {})
        if custom
            if options[:labelClass].nil?
                options[:labelClass] = ""
            end
            if options[:fieldClass].nil?
                options[:fieldClass] = ""
            end
        else
            options[:labelClass] = "ml-6 green-text text-sm"
            options[:fieldClass] = "w-full h-full rounded-lg highlight-bg-accent overflow-scroll"
        end
        if object.errors[field].any?
            options[:fieldClass] = options[:fieldClass] + " border border-red-500 text-red-500"
        else
            options[:fieldClass] = options[:fieldClass] + " border-none"
        end
        if value.nil?
            value = object.send(field)
        end
        render partial: "partials/form_components/text_field", locals: { form: form, field: field, title: title, object: object, value: value, disabled: disabled, autocomplete: autocomplete, options: options } 
    end

    def passwordField(form, field, title, object, value = nil, disabled = false, autocomplete = "off", custom = false, options = {})
        if custom
            if options[:labelClass].nil?
                options[:labelClass] = ""
            end
            if options[:fieldClass].nil?
                options[:fieldClass] = ""
            end
        else
            options[:labelClass] = "ml-6 green-text text-sm"
            options[:fieldClass] = "w-full h-full rounded-lg highlight-bg-accent overflow-scroll"
        end
        if object.errors[field].any?
            options[:fieldClass] = options[:fieldClass] + " border border-red-500 text-red-500"
        else
            options[:fieldClass] = options[:fieldClass] + " border-none"
        end
        if value.nil?
            value = object.send(field)
        end
        render partial: "partials/form_components/password_field", locals: { form: form, field: field, title: title, object: object, value: value, disabled: disabled, autocomplete: autocomplete, options: options }
    end

    def emailField(form, field, title, object, value = nil, disabled = false, autocomplete = "off", custom = false, options = {})
        if custom
            if options[:labelClass].nil?
                options[:labelClass] = ""
            end
            if options[:fieldClass].nil?
                options[:fieldClass] = ""
            end
        else
            options[:labelClass] = "ml-6 green-text text-sm"
            options[:fieldClass] = "w-full h-full rounded-lg highlight-bg-accent overflow-scroll"
        end
        if object.errors[field].any?
            options[:fieldClass] = options[:fieldClass] + " border border-red-500 text-red-500"
        else
            options[:fieldClass] = options[:fieldClass] + " border-none"
        end
        if value.nil?
            value = object.send(field)
        end
        render partial: "partials/form_components/email_field", locals: { form: form, field: field, title: title, object: object, value: value, disabled: disabled, autocomplete: autocomplete, options: options }
    end      

    def textArea(form, field, title, object, value = nil, disabled = false, autocomplete = "off", custom = false, options = {})
        if custom
            if options[:labelClass].nil?
                options[:labelClass] = ""
            end
            if options[:fieldClass].nil?
                options[:fieldClass] = ""
            end
        else
            options[:labelClass] = "ml-6 green-text text-sm"
            options[:fieldClass] = "w-full rounded-lg highlight-bg-accent h-64 overflow-scroll"
        end
        if object.errors[field].any?
            options[:fieldClass] = options[:fieldClass] + " border border-red-500 text-red-500"
        else
            options[:fieldClass] = options[:fieldClass] + " border-none"
        end
        if value.nil?
            value = object.send(field)
        end
        render partial: "partials/form_components/text_area", locals: { form: form, field: field, title: title, object: object, value: value, disabled: disabled, autocomplete: autocomplete, options: options } 
    end

    def selectField(form, field, title, object, choices, value = nil, disabled = false, custom = false, options = {})
        if custom
            if options[:labelClass].nil?
                options[:labelClass] = ""
            end
            if options[:fieldClass].nil?
                options[:fieldClass] = ""
            end
        else
            options[:labelClass] = "ml-6 green-text text-sm"
            options[:fieldClass] = "w-full h-full rounded-lg highlight-bg-accent overflow-scroll"
        end
        if object.errors[field].any?
            options[:fieldClass] = options[:fieldClass] + " border border-red-500 text-red-500"
        else
            options[:fieldClass] = options[:fieldClass] + " border-none"
        end
        if value.nil?
            value = object.send(field)
        end
        render partial: "partials/form_components/select_field", locals: { form: form, field: field, title: title, object: object, choices: choices, value: value, disabled: disabled, options: options } 
    end

    def submitButton(form, title, custom = false, options = {})
        if custom
            if options[:buttonClass].nil?
                options[:buttonClass] = ""
            end
        else
            options[:buttonClass] = "px-8 py-2 text-center text-base border w-full rounded-lg border-action-green format-h2 hover:highlight-bg-accent hover:green-text"
        end
        render partial: "partials/form_components/submit_button", locals: { form: form, title: title, options: options } 
    end
end