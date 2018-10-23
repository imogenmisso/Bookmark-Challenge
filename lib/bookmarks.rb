require 'pg'
class Bookmarks
  def self.all
    if ENV['ENVIRONMENT'] = 'test'
      con = PG.connect :dbname => 'bookmark_manager_test'
    else
      con = PG.connect :dbname => 'bookmark_manager'
    end
      rs = con.exec "SELECT * FROM bookmarks"
      rs.map { |row| row['title'] }
  end

  def self.add_entry(url, title)
    if ENV['ENVIRONMENT'] = 'test'
      con = PG.connect :dbname => 'bookmark_manager_test'
    else
      con = PG.connect :dbname => 'bookmark_manager'
    end
      rs = con.exec "INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}')"
  end
end
