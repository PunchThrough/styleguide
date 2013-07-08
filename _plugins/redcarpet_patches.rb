require 'redcarpet'
class Redcarpet::Render::HTML
  def header(text, header_level)
    self.class.increment_section
    anchor = text.downcase.strip.gsub(" ", "-").gsub(/\&\w+;/, '')
    %(<h#{header_level} id='#{anchor}'><a class='reference' href='##{anchor}'><i class='icon-map-marker'></i></a>#{text}</h#{header_level}>)
  end

  def list_item(text, list_type)
    anchor = "S#{self.class.section}_L#{self.class.list_index}"
    %(<li id='#{anchor}'><a class='reference' href='##{anchor}'><i class='icon-map-marker'></i></a>#{text}</li>)
  end

  def self.list_index
    @list_index = @list_index.to_i + 1
  end


  def self.increment_section
    @section = @section.to_i + 1
  end

  def self.section
    @section || 0
  end

end

