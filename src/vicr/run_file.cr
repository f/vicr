module Vicr
  class RunFile
    getter! :path

    def initialize(@path = path)
      File.exists?(@path) ? File.new @path, "r" : create_new
    end

    def delete
      File.delete @path if File.exists? @path
    end

    def create_new
      File.new @path, "w"
    end

    def lines
      File.read_lines @path
    end
  end
end
