#Create 5 users

User.create(first_name:"Molly", last_name:"Coco", email_address:"molly@coco.com")

#Create 5 blogs

Rblog.create(name:"blog6", description:"blog6-description")


#Have the first 3 blogs be owned by the first user
# ** example of how to creaate the association record between 2 tables **
Owner.create(user:User.find(2), rblog:Rblog.find(3))

#Have the third user own all of the blogs that were created.

Owner.destroy_all()
Rblog.all.each do |blog|
    Owner.create(user:User.find(3), rblog:blog)
end

#Have the first user create 3 posts for the blog with an id of 2. Remember that you shouldn't do Post.create(user: User.first, blog_id: 2) but more like Post.create(user: User.first, blog: Blog.find(2)). Again, you should never reference the foreign key in Rails.

Post.create(title:"title", content:"content", rblog:Rblog.find(2), user:User.first)

#Have the second user create 5 posts for the last Blog.
Post.create(title:"title", content:"content", rblog:Rblog.last, user:User.find(4))

#Have the 3rd user create several posts for different blogs.
Post.create(title:"title", content:"content", rblog:Rblog.find(5), user:User.find(5))
Post.create(title:"title", content:"content", rblog:Rblog.find(5), user:User.find(5))
Post.create(title:"title", content:"content", rblog:Rblog.find(5), user:User.find(5))
Post.create(title:"title", content:"content", rblog:Rblog.find(6), user:User.find(5))
Post.create(title:"title", content:"content", rblog:Rblog.find(6), user:User.find(5))
Post.create(title:"title", content:"content", rblog:Rblog.find(6), user:User.find(5))

#Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
Message.create(author:"Jonathan", message:"message1", post:Post.first(), user:User.find(4))
Message.create(author:"Jonathan", message:"message1", post:Post.first(), user:User.find(4))
Message.create(author:"Jonathan", message:"message1", post:Post.find(10), user:User.find(4))
Message.create(author:"Jonathan", message:"message1", post:Post.find(10), user:User.find(4))
Message.create(author:"Jonathan", message:"message1", post:Post.find(10), user:User.find(4))

#Have the 4th user create 3 messages for the last post you created.
Message.create(author:"Jonathan", message:"message1", post:Post.last, user:User.find(5))
Message.create(author:"Jonathan", message:"message1", post:Post.last, user:User.find(5))
Message.create(author:"Jonathan", message:"message1", post:Post.last, user:User.find(5))

#Change the owner of the 2nd post to the last user.
post = Post.find(10);
post.user = User.last;
post.save

#Change the 2nd post's content to be something else.
post = Post.find(10);
post.content = "this is a test";
post.save

#Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.find(3).rblog.all()

#Retrieve all posts that were created by the 3rd user
Post.joins(:user).where(user:User.find(2))

#Retrieve all messages left by the 3rd user
Message.joins(:user).where(user:User.find(3))

#Retrieve all posts associated with the last blog as well as who left these posts.
Post.select("title, content, name, first_name, last_name").joins(:rblog, :user).where(rblog:Rblog.last)

#Retrieve all messages associated with the blog id =2 along with all the user information of those who left the messages.
Message.select(:author, :message, "users.first_name", "users.last_name").joins(:user,  post: :rblog).where(posts: {rblog_id:Rblog.find(2)})

#Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Rblog.first.user

#Change it so that the first blog is no longer owned by the first user.
owner = Owner.all().where(rblog:Rblog.find(1)).limit(1);
owner[0].user = User.find(5);
owner[0].save
