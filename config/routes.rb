Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  get '/lessons/teacher_cal' => 'lessons#teacher_cal'
  get '/lessons/student_cal' => 'lessons#student_cal'
  
  resources :lessons do
    resources :comments, module: :lessons
  end 

  post "lessons/new"

  root 'lessons#home'

end
