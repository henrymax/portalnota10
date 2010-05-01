module Styler

  def stylesheets(options='')

    # Applicaton defaults
    stylesheets = options[:exclude_application] ? [] : ["application"]

    # Additional sheets (if requested)
    if options[:include]
      options[:include].each do |stylesheet|
        stylesheets << stylesheet
      end
    end

    # adm/representantes pega apenas adm
    # @TODO implementar para path maiores, adm/boletos/operacoes/enviar
    parts = controller.controller_path.split "/"
    stylesheets << parts.first if parts.length > 1
    
    mod = parts.length > 1 ? parts.first + "/" : ""

    # Controller/action sheets
=begin
    stylesheets << "#{mod + controller.controller_name}"
    stylesheets << "#{mod + controller.controller_name}_#{controller.action_name}"
    stylesheets << "#{mod + controller.controller_name}/#{controller.action_name}"
=end
    stylesheets << "#{controller.controller_path.sub('/', '_')}"
    stylesheets << "#{controller.controller_path.sub('/', '_')}_#{controller.action_name}"
    stylesheets << "#{controller.controller_path}"
    stylesheets << "#{controller.controller_path}/#{controller.action_name}"

    # IE6 / IE7
    stylesheets << "ie7"
    stylesheets << "ie6"

    stylesheets.uniq!
    # Add links to header
    stylesheets.collect! do |name| 
      if File.exist?("#{RAILS_ROOT}/public/stylesheets/#{name}.css")
        case name
        when "ie7"
          "<!--[if IE 7]>\n" + stylesheet_link_tag(name) + "\n<![endif]-->"
        when "ie6"
          "<!--[if IE 6]>\n" + stylesheet_link_tag(name) + "\n<![endif]-->"
        else
          stylesheet_link_tag(name)
        end
      end
    end
    stylesheets.compact.join("\n")
  end

end