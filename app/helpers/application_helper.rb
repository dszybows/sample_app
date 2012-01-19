module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "Dariusz Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  #<%= link_to logo, root_path %>
  
  # <% logo = image_tag("logo.png", :alt => "Sample App", :class => "round") %>
  # <%= link_to logo, root_path %>

  def logo 
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
  
end
