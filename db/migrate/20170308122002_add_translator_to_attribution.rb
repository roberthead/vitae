class AddTranslatorToAttribution < ActiveRecord::Migration
  def change
    add_column :attributions, :translator, :boolean
  end
end
