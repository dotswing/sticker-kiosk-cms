module KioskAPI
  class PhoneToUsersAPI < Grape::API
    version 'v1'
    prefix 'api'
    format :json

    resource :phone_to_users do
      params do
        requires :phone_number, type: String
      end

      post "phone_to_user" do
        user = User.find_by(phone_number: params[:phone_number])

        if user !~ /0[689]{1}[0-9]{8}/
          error = {
            "status": "failed",
            "error": "Phone number is in incorrect format",
            "timestamp": Time.now
          }
        end

        if user.nil?
          error = {
            "status": "failed",
            "error": "User not found",
            "timestamp": Time.now
          }
        end

        if user.present?
          success = {
            "status": "success",
            "user_exist": true,
            "user_profile": {
                  "display_name": user[:display_name],
                  "status_message": user[:status_message],
                  "mid": user[:mid]
            },
            "timestamp": Time.now
          }
        end
      end
    end

    # route :phone_to_users, 'phone_to_user_api' do
    #   redirect api_v1_phone_to_users_path
    # end
  end
end
