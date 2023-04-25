# Hi!, use the rails dev:setup command to create data.

# Create User
PASSWORD = 123_456
george = User.create!(first_name: "George", last_name: "Pires", email: "george@gmail.com", password: PASSWORD, password_confirmation: PASSWORD)

# Create post and tags
body = <<-END
<strong>Eum vero nisi ut quasi magnam est labore distinctio.</strong><br><p>Lorem ipsum dolor sit amet. Qui necessitatibus quiaIn tempore ea accusamus voluptatibus ea voluptas quasi aut laboriosam sapiente. Eos aperiam dicta et suscipit maximeut nihil et quisquam consectetur? </p><br><blockquote cite="https://www.loremipzum.com">Est quidem nostrum non magni iure sed nihil dicta et doloribus nostrum. </blockquote><pre><code>&lt;!-- Et incidunt quia. --&gt;<br>&lt;quasi&gt;Est minima eaque 33 dolor aliquam.&lt;/quasi&gt;<br>&lt;perferendis&gt;Quo consequatur temporibus eum delectus soluta non deserunt laudantium?&lt;/perferendis&gt;<br>&lt;minima&gt;Et dolores odit.&lt;/minima&gt;<br></code></pre><h2>Ea mollitia doloribus eos facilis libero. </h2><p>Est dolor excepturi <a href="https://www.loremipzum.com" target="_blank">At veniam ea dicta illo ut accusamus dolorem</a> sed sint pariatur. Qui alias delenitiEt minus est voluptas internos sit tenetur temporibus ea accusantium officia sit perspiciatis quidem. </p><strong><h3>Ea delectus omnis et dolor excepturi. </h3></strong><br><p>Et repudiandae accusamusEt debitis sed consequatur aliquam et dicta aperiam qui velit delectus hic officia beatae ut deleniti numquam. Qui totam quidem sed nihil fugaet numquam non nobis consequatur sit dicta temporibus. </p><ul><li>Sit omnis omnis est neque quae. </li><li>Ut numquam molestiae est error quam sed molestias nihil. </li><li>Vel voluptatum quia sed quia officia et laborum earum ut veritatis earum. </li></ul>

END

post =  Post.create!(title: "My First Post", body: body, user_id: george.id) 
Tag.create(name: "First", post_id: post.id)