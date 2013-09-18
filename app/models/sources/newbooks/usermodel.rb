module Sources
  module Newbooks
    class Usermodel < Sources::Newbooks::Base
      def get(options = {})
        widget  = Widget.find(7)       
        dashboard_id = widget.dashboard_id        
        dashboard = Dashboard.find(dashboard_id)       
        user_id = dashboard.user_id        
         c = CloudBook.where(:users_id => user_id).where(:created_at => Time.now - 7.days..Time.now).count        
        { :value => c }
      end

    end

  end
end
