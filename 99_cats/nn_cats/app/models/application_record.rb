require 'action_view'
require 'action_view/helpers'

class ApplicationRecord < ActiveRecord::Base
  include ActionView::Helpers::DateHelper
  self.abstract_class = true

end
