class ChangeUserJournalsToApiV1UserJournals < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_journals, :api_v1_user_journals
  end
end
