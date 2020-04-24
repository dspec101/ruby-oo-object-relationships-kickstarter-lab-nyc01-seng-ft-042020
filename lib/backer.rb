class Backer
    @@all = []
attr_reader :name

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def back_project(project)
    ProjectBacker.new(project,self)
end

def backed_projects
projectb = ProjectBacker.all.select do |p|
  p.backer == self 
end 

projectb.map do |projb|
    projb.project
  end
end


end
