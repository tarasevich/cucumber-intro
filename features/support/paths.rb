module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /the homepage/
      '/'
    when /the list of users/
      '/users'
    else
      raise "Cannot find mapping from #{page_name}"
    end
  end
end

World(NavigationHelpers)
