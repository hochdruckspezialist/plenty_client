module PlentyClient
  module Order
    class Property
      include PlentyClient::Endpoint
      include PlentyClient::Request

      # get /rest/orders/{orderId}/properties/{typeId?}
      # post /rest/orders/{orderId}/properties
      # put /rest/orders/{orderId}/properties/{typeId}
      # put /rest/orders/properties/{id}
      # delete /rest/orders/properties/{id}
      # delete /rest/orders/{orderId}/properties/{typeId}
      # get /rest/orders/properties/types
      # get /rest/orders/properties/types/{typeId}
      # post /rest/orders/properties/types
      # put /rest/orders/properties/types/{typeId}
      # delete /rest/orders/properties/types/{typeId}
      
      LIST_PROPERTIES_TYPES                 = '/orders/properties/types'
      
      class << self

        def listPropertyTypes(headers = {}, &block)
          get(build_endpoint(LIST_PROPERTIES_TYPES), headers, &block)
        end
      end
    end
  end
end
