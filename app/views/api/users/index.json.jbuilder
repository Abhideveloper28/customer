json.array! @users do |user|
  json.(
    user,
    :id,
    :user_name,
    :email,
    :user_name,
    :phone_number
  )
end
