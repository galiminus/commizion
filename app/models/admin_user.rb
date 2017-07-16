# == Schema Information
#
# Table name: admin_users
#
#  created_at             :datetime         not null
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  id                     :integer          not null, primary key
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  updated_at             :datetime         not null
#

class AdminUser < ApplicationRecord

### Model Config ###

### Modules ###

### Constants ###

### Associations ###

### Macros ###

  devise :database_authenticatable, 
    :recoverable, :rememberable, :trackable, :validatable

### Scopes ###

### Validations ###

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
