require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
    
    describe "projects#index action" do

        it "should successfully show the page" do
            get :index
            expect(response).to have_http_status(:success)
        end

    end

    describe "projects#new action" do

        it "should  successfully show the new form" do
            get :new
            expect(response).to have_http_status(:success)
        end

    end

    describe "projects#create action" do

        it "should require a user to be logged in" do
            post :create, params: { project: { name: "New Project", description: "Description", due_date: "7/30/2019" } }
            expect(response).to redirect_to new_user_session_path
        end

        # it "should successfully create a new project in our database" do
        #     user = FactoryBot.create(:user)
        #     sign_in user

        #     post :create, params: { 
        #         project: { 
        #             name: 'New Project',
        #             description: 'Description',
        #             due_date: '7/30/2019'
        #         }
        #     }
            
        #     expect(response).to redirect_to root_path

        #     project = Project.last
        #     expect(project.name).to eq('New Project')
        # end

    end

end