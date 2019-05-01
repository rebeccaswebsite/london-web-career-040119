# associations

- add a patient model
- associate it with doctor -> what's a good association?
  - has_many :patients, dependent: :destroy
  - belongs_to :doctor
- create instances of patient and relate them to doctors on the console
- edit doctor forms and show pages

```rb
<!-- DIY f.collection_select -->
  <select name="post[user_id]">
    <% User.all.each do |user| %>
      <option value="<%= user.id %>">
        <%= user.name %>
      </option>
    <% end %>
  </select>
```

```rb
<%= form_for(@post) do |f| %>
  <%= f.label :title %>
  <%= f.text_field :title %>

  <%= f.label :content %>
  <%= f.text_area :content %>

  <%= f.label :user %>

    # First arg is method we want to call on @post (:user_id),
    # Second The collection we want to use to populate the dropdown(User.all),
    # Third The value we want in our params: User#id,
    # Fourth What do we want to display in the tag itself? User#name

  <%= f.collection_select(:user_id, User.all, :id, :name) %>
  <%= f.submit %>
<% end %>
```
