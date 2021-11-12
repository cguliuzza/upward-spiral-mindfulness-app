class ChangeJournalsToApiV1Journals < ActiveRecord::Migration[6.1]
  def change
    rename_table :journals, :api_v1_journals
  end
end
