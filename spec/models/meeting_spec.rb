require 'rails_helper'

RSpec.describe Meeting, type: :model do
  before do
    @meeting = FactoryBot.build(:meeting)
  end

  it "全ての値が存在すれば登録できること" do
    expect(@meeting).to be_valid
  end

  it "categoryが空では登録できないこと" do
    @meeting.category = nil
    @meeting.valid?
    expect(@meeting.errors.full_messages).to include("Category can't be blank")
  end
 
  it "start_timeが空では登録できないこと" do
    @meeting.start_time = nil
    @meeting.valid?
    expect(@meeting.errors.full_messages).to include("Start time can't be blank")
  end

  it "start_timeが空では登録できないこと" do
    @meeting.finish_time = nil
    @meeting.valid?
    expect(@meeting.errors.full_messages).to include("Finish time can't be blank")
  end

end
