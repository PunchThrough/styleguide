require 'redcarpet'
class Redcarpet::Render::HTML
  def header(text, header_level)
    anchor= text.downcase.strip.gsub(" ", "-").gsub(/\&\w+;/, '')
    %(<h#{header_level} id='#{anchor}'><a class='reference' href='##{anchor}'><i class='icon-map-marker'></i></a>#{text}</h#{header_level}>)
  end

  def list_item(text, list_type)
    anchor = "L_#{self.class.list_index}"
    %(<li id='#{anchor}'><a class='reference' href='##{anchor}'><i class='icon-map-marker'></i></a>#{text}</li>)
  end

  def self.list_index
    @list_index = @list_index.to_i + 1
  end
end

