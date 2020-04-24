class Project
@@all = []
attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

def backers
# #backerb iterates through the project instant and returns an 
# array of those for which the project is the same as the instance we're in (self)
backerb = ProjectBacker.all.select do |p|
    p.project == self
end

#use .map on backerb to then go through that array and select the ones with the 
# backer associated with our specific project

backerb.map do |bb|
    bb.backer
end
end

end
