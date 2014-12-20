# -*- coding: utf-8 -*-

module InitDB class << self
  def init
    retry_limit, count = 5, 0
    begin
      ActiveRecord::Base.connection.tables.each do |table_name|
        next if table_name == ActiveRecord::SchemaMigration.table_name
        ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table_name};")
      end
    rescue => ex
      logger.error(ex)
      logger.error(ex.backtrace.join("\n"))
# 無限ループを避けるために指定回数で初期化処理は中断する
      if (count += 1) < retry_limit
        retry
      else
        raise 'Database initialize error'
      end
    end
  end
end
end