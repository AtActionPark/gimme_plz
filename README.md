# Gimme_$_plz

[Gimme_$_plz](https://shielded-taiga-9226.herokuapp.com/) is a fake Kickstarter type site. It was created as the final assignment of the [Odin's Project](http://www.theodinproject.com/javascript-and-jquery/final-project)

![presentation](/public/images/presentation.png )


## Main Features

#### Profile & Authentication

Authentication through [Devise](https://github.com/plataformatec/devise "Devise").

Most of the site content is viewable without being signed in, but project creation, edit, and donations require authentication.

Users profile allows upload of a picture, processed with [Paperclip](https://github.com/thoughtbot/paperclip) and stored with AWS S3 storage.

![userExample](/public/images/userExample.png )


#### Projects & Donations

Users can create and edit their projects. Projects have an objective, and a duration.

The project description is rendered in markdown with [red carpet](https://github.com/vmg/redcarpet)

Project show page contains a donation ajax button that allows identified users to donate.

The remaining time and project donators are updated accordingly.

Commments are available on each project page via disqus.

![projectPage](/public/images/projectPageExample.png )


#### Projects index

The project index page allows for search queries with [filterrific](https://github.com/jhund/filterrific)

Users can search project by key word and categories and filter finished projects.

Project index page features ajax infinite scroll and [will_paginate pagination](https://github.com/mislav/will_paginate)

![projectIndex](/public/images/projectIndexExample.png )


#### Users & Admins

Admin users have access to special features : 
1.Edit and delete all projects
1.Access users index, delete users, or grant/remove admin privileges
1.Access a selection screen, used to set up the projects displayed in the front page.

![adminPanels](/public/images/adminPanelsExample.png )


