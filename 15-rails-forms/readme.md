### Create a new application

`rails new docoffice`

`rails g model Doctor name speciality`

Create your controllers

```ruby
class DoctorController < ApplicationController
  def index
    @doctors = Doctor.all
  end


  def show
    @doctor = Doctor.find(params[:id]
  end


  def new
    @doctor = Doctor.new
  end


  def create
    @doctor = Doctor.create(name: params[:doctor][:name], speciality: params[:doctor][:speciality])
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end


  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(name: params[:doctor][:name], speciality: params[:doctor][:speciality])
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :speciality)
  end
end
```

Create your corresponding views - use partials
`<%= render "_form" %>`

```rb
  <%= form_for @doctor do |f| %>
    <%= f.label :name %>
    <%= f.text_field :name %>


    <%= f.label :speciality %>
    <%= f.text_field :speciality %>

    <%= f.submit %>
  <% end %>
```

```rb
<%= form_tag doctor_path(@doctor), method: "delete" do  %>
  <%= submit_tag "Delete Doctor" %>
<% end %>


```

### Refactor with before_action

Refactor your controllers
Notice the number of times `Doctor.find(params[:id])` is used

We can make sure that block of code is executed before each of the controller#actions that need it like :show,:edit,:update,:destroy

```ruby
class DoctorController < ApplicationController
  before_action :find_doctor, only: [:show, :edit, :update, :destroy]

  private

  def find_doctor
    @doctor = Doctor.find(params[:id]
  end
end
```
