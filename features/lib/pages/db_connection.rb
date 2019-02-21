require 'pg'

class Database
  
  def self.connect
    PG.connect(dbname: "spartaappsql")
  end

  def clear_data
    conn = Database.connect
    sql2 = "DELETE FROM sa studentanswer WHERE sa.studenttestid = 2"
    sql1 = "DELETE FROM student_test WHERE studentid = 3"
    sql = "DELETE FROM student WHERE studentid = 3"
    conn.exec(sql2)
    conn.exec(sql1)
    conn.exec(sql)
  end

end
