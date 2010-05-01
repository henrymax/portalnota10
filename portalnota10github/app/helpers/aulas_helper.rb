module AulasHelper

  def string_hint(str, numero_de_letras, adicionar_pontos=true)
    new_string = h(str)

    if !str.nil? && str.length > numero_de_letras
      new_string = h(str.slice(0, numero_de_letras))
      new_string += '...' if adicionar_pontos
      new_string = "<span title='#{str}'>#{new_string}</span>"
    end

    new_string
  end

  def render_video video, w, h
    tag = video.tag_html
    tag.gsub!(/width="[0-9]*"/, "width='#{w}'").
      gsub!(/height="[0-9]*"/, "height='#{h}'")
  end

end
