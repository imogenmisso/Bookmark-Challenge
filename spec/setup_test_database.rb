require 'pg'
con = PG.connect :dbname => 'bookmark_manager_test'
rs = con.exec "TRUNCATE TABLE bookmarks"
rs = con.exec "INSERT INTO bookmarks (id, url) VALUES(1, 'www.youtube.com')"
rs = con.exec "INSERT INTO bookmarks (id, url) VALUES(2, 'www.facebook.com')"
rs = con.exec "INSERT INTO bookmarks (id, url) VALUES(3, 'www.instagram.com')"
