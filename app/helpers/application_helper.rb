module ApplicationHelper
    def current_order
        # Use Find by id to avoid potential erros
        if Order.find_by_id(session[:order_id]).nil?
          Order.new
        else
          Order.find_by_id(session[:order_id])
        end
      end

      def current_list
        # Use Find by id to avoid potential erros
        if List.find_by_id(session[:list_id]).nil?
          List.new
        else
          List.find_by_id(session[:list_id])
        end
      end
end
