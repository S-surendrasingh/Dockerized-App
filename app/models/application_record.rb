# frozen_string_literal: true

# ApplicationRecord serves as the base class for all models in the application.
# It inherits from ActiveRecord::Base and is intended to be used as a common place
# for shared functionality and logic across models.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
