module Slugifiable

  module ClassMethods
    def find_by_slug(slug)
      self.all.detect {|instance| instance.slug == slug}
    end
  end

  module InstanceMethods
    def slug
      self.name.downcase.gsub(' ', '-')
    end
  end


end
