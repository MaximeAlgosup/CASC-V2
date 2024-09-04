module ButtonsHelper

    def addButton(title, path, custom = false, options = {})
        if custom
            if options[:buttonClass].nil?
                options[:buttonClass] = ""
            end
        else
            options[:buttonClass] = "h-7 w-7 m-1 text-gray-300 hover:text-white bg-lime-600 cursor-pointer rounded-lg"
        end
        render partial: "partials/buttons/add_button", locals: { title: title, path: path, options: options }
    end

    def delButton(title, path, object, custom = false, options = {})
        if custom
            if options[:buttonClass].nil?
                options[:buttonClass] = ""
            end
        else
            options[:buttonClass] = "h-7 w-7 p-1 text-gray-300 hover:text-white bg-red-400 cursor-pointer rounded-lg"
        end
        render partial: "partials/buttons/del_button", locals: { title: title, path: path, object: object, options: options }
    end
end