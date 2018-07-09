class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_collection(students_array)
    queue = students_array
    result = []
    i = 0
    j = 0
    Scraper.scrape_index_page("http://165.227.31.156:56576/fixtures/student-site/").each do |student_hash|
      if j == 0
        binding.pry
        j += 1
      end
      while i < queue.size
        if queue[i][:name] == student_hash[:name]
        end
        i += 1
      end
      i = 0
    end

    #students_array.each{|student_hash| result << Student.new(student_hash) }
    result
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
