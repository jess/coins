Rails.application.routes.draw do
  root to: "application#root"
  get '/*other' => "application#root"
end
