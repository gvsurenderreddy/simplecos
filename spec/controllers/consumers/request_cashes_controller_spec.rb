require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Consumers::RequestCashesController do

  # This should return the minimal set of attributes required to create a valid
  # Consumers::RequestCash. As you add validations to Consumers::RequestCash, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Consumers::RequestCashesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all consumers_request_cashes as @consumers_request_cashes" do
      request_cash = Consumers::RequestCash.create! valid_attributes
      get :index, {}, valid_session
      assigns(:consumers_request_cashes).should eq([request_cash])
    end
  end

  describe "GET show" do
    it "assigns the requested request_cash as @request_cash" do
      request_cash = Consumers::RequestCash.create! valid_attributes
      get :show, {:id => request_cash.to_param}, valid_session
      assigns(:request_cash).should eq(request_cash)
    end
  end

  describe "GET new" do
    it "assigns a new request_cash as @request_cash" do
      get :new, {}, valid_session
      assigns(:request_cash).should be_a_new(Consumers::RequestCash)
    end
  end

  describe "GET edit" do
    it "assigns the requested request_cash as @request_cash" do
      request_cash = Consumers::RequestCash.create! valid_attributes
      get :edit, {:id => request_cash.to_param}, valid_session
      assigns(:request_cash).should eq(request_cash)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Consumers::RequestCash" do
        expect {
          post :create, {:request_cash => valid_attributes}, valid_session
        }.to change(Consumers::RequestCash, :count).by(1)
      end

      it "assigns a newly created request_cash as @request_cash" do
        post :create, {:request_cash => valid_attributes}, valid_session
        assigns(:request_cash).should be_a(Consumers::RequestCash)
        assigns(:request_cash).should be_persisted
      end

      it "redirects to the created request_cash" do
        post :create, {:request_cash => valid_attributes}, valid_session
        response.should redirect_to(Consumers::RequestCash.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved request_cash as @request_cash" do
        # Trigger the behavior that occurs when invalid params are submitted
        Consumers::RequestCash.any_instance.stub(:save).and_return(false)
        post :create, {:request_cash => {}}, valid_session
        assigns(:request_cash).should be_a_new(Consumers::RequestCash)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Consumers::RequestCash.any_instance.stub(:save).and_return(false)
        post :create, {:request_cash => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested request_cash" do
        request_cash = Consumers::RequestCash.create! valid_attributes
        # Assuming there are no other consumers_request_cashes in the database, this
        # specifies that the Consumers::RequestCash created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Consumers::RequestCash.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => request_cash.to_param, :request_cash => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested request_cash as @request_cash" do
        request_cash = Consumers::RequestCash.create! valid_attributes
        put :update, {:id => request_cash.to_param, :request_cash => valid_attributes}, valid_session
        assigns(:request_cash).should eq(request_cash)
      end

      it "redirects to the request_cash" do
        request_cash = Consumers::RequestCash.create! valid_attributes
        put :update, {:id => request_cash.to_param, :request_cash => valid_attributes}, valid_session
        response.should redirect_to(request_cash)
      end
    end

    describe "with invalid params" do
      it "assigns the request_cash as @request_cash" do
        request_cash = Consumers::RequestCash.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Consumers::RequestCash.any_instance.stub(:save).and_return(false)
        put :update, {:id => request_cash.to_param, :request_cash => {}}, valid_session
        assigns(:request_cash).should eq(request_cash)
      end

      it "re-renders the 'edit' template" do
        request_cash = Consumers::RequestCash.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Consumers::RequestCash.any_instance.stub(:save).and_return(false)
        put :update, {:id => request_cash.to_param, :request_cash => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested request_cash" do
      request_cash = Consumers::RequestCash.create! valid_attributes
      expect {
        delete :destroy, {:id => request_cash.to_param}, valid_session
      }.to change(Consumers::RequestCash, :count).by(-1)
    end

    it "redirects to the consumers_request_cashes list" do
      request_cash = Consumers::RequestCash.create! valid_attributes
      delete :destroy, {:id => request_cash.to_param}, valid_session
      response.should redirect_to(consumers_request_cashes_url)
    end
  end

end
