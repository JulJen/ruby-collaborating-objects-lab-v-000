class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.delete_if { |x| x == "." || x ==".." }
  end

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end
end
