module PlentyClient
  module Item
    module Variation
      class Client
        include PlentyClient::Endpoint
        include PlentyClient::Request

        ITEM_VARIATION_CLIENTS_PATH    = '/items/{itemId}/variations/{variationId}'.freeze

        GET_ITEM_VARIATIONS_CLIENTS    = '/variation_clients'.freeze
        CREATE_ITEM_VARIATIONS_CLIENTS = '/variation_clients'.freeze
        DELETE_ITEM_VARIATIONS_CLIENTS = '/variation_clients/{plentyId}'.freeze

        class << self
          def list(item_id, variation_id, headers = {}, &block)
            get(build_endpoint("#{ITEM_VARIATION_CLIENTS_PATH}#{GET_ITEM_VARIATIONS_CLIENTS}",
                               item: item_id,
                               variation: variation_id), headers, &block)
          end

          def create(item_id, variation_id, body = {})
            post(build_endpoint("#{ITEM_VARIATION_CLIENTS_PATH}#{CREATE_ITEM_VARIATIONS_CLIENTS}",
                                item: item_id,
                                variation: variation_id), body)
          end

          def destroy(item_id, variation_id, plenty_id)
            delete(build_endpoint("#{ITEM_VARIATION_CLIENTS_PATH}#{DELETE_ITEM_VARIATIONS_CLIENTS}",
                                  item: item_id,
                                  variation: variation_id,
                                  plenty_id: plenty_id))
          end
        end
      end
    end
  end
end
