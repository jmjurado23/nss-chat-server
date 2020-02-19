require 'rails_helper'

RSpec.describe Wallpaper, type: :model do

  describe "Fields" do
    it{ is_expected.to have_field( :file ).of_type( String )}
    it{ is_expected.to have_field( :filename ).of_type( String )}
    it{ is_expected.to have_field( :file64 ).of_type( String )}
    it{ is_expected.to have_field( :size_file ).of_type( Integer )}
    it{ is_expected.to have_field( :file_extension ).of_type( String )}
    it{ is_expected.to have_field( :unique_hash ).of_type( Integer )}
    it{ is_expected.to have_field( :features ).of_type( Array )}
    it{ is_expected.to have_field( :colors ).of_type( Array )}
    it{ is_expected.to have_field( :primary_colors ).of_type( Array )}
    it{ is_expected.to have_field( :link ).of_type( String )}
  end

  describe "Validations" do
    it{ is_expected.to validate_presence_of :file }
  end
end
