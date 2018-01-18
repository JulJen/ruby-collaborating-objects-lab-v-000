class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
<<<<<<< HEAD
    files.delete_if { |x| x == "." || x ==".." }
  end

  def import
    files.each { |f| Song.new_by_filename(f) }
  end
=======
    files.delete_if { |item| item == "." || item ==".."}
  end

  def import(files)
  files.each { |filename| Song.new_by_filename(filename) }
  end

  # def import(list_of_filenames)
  #     list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  # end
>>>>>>> 33b847409c8cab138814c782c4a28f4c539e05a7
end
