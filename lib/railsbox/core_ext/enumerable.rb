module Enumerable
  # Alternative Block execution on empty Enumerable
  # e.g., <% results.each do |x| %>
  #        <li>hit:<%=x-%></li>
  #       <% end.else do %>
  #         <li>no hits found</li>
  #       <% end %>
  # - author => http://blog.sponagl.de/2009/1/23/alternative-block-execution-on-empty-enumerable
  def else(&block)
    self.respond_to?('empty?') && self.empty? ? yield : self
  end
end