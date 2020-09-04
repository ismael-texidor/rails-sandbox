 require 'rails_helper'

RSpec.describe "/sandboxes", type: :request do
  # Sandbox. As you add validations to Sandbox, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {sand_grains: 1,
      box_name: 'MyString'}
  }

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Sandbox" do
        expect {
          post '/sandboxes/', params: { sandbox: valid_attributes }
        }.to change(Sandbox, :count).by(1)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested sandbox" do
      sandbox = Sandbox.create! valid_attributes
      expect {
        delete sandbox_url(sandbox)
      }.to change(Sandbox, :count).by(-1)
    end
  end
end
