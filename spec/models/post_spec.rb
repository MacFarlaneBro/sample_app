require 'spec_helper'

describe Post do

  let(:user) { FactoryGirl.create(:user) }
  before do
    @post = Post.new(content: "Lorem ipsum", title: "lor")
  end

    subject { @post }
    
    it { should respond_to(:content) }
    it { should respond_to(:user_id) }
                
end
