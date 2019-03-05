require 'pg'

class Database

  def self.connect
    PG.connect(dbname: "spartaappsql")
  end

  def clear_data(id)
    conn = Database.connect
    sql2 = "DELETE FROM studentanswer WHERE studenttestid = (SELECT studenttestid FROM student_test WHERE studentid = #{id})"
    sql1 = "DELETE FROM student_test WHERE studentid = #{id}"
    sql = "DELETE FROM student WHERE studentid = #{id}"
    conn.exec(sql2)
    conn.exec(sql1)
    conn.exec(sql)
  end

end
