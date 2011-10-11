require 'active_record'
require 'sqlite3_ar_regexp'

describe 'SQLite3ARRegexp::Extension' do
  before(:all) do
    ActiveRecord::Base.establish_connection(
      :adapter  => 'sqlite3',
      :database => 'spec/test.sqlite3'
    )

    class NobelPrizeWinner < ActiveRecord::Base
    end
  end

  it 'should give ActiveRecord::ConnectionAdapters::SQLite3Adapter "REGEXP" support' do
    NobelPrizeWinner.where('first_name REGEXP "al|ma"').count.should == 3
  end
end
