# Website Setup
This post documents how my website is setup. Since I deploy it via github pages, that really ammounts to how it is built.

The premise is that I have several component projects that all dump their build artifacts into a common root directory. I then run the cobalt templater on that directory to produce the final website.

The current key components are:

* KaTeX 
* My pandoc posts directory
* The main website source directory

For now the build components and the the websource live in the same repository. I think a fair argument could be made for seperating them at some point once I get into a better routine. 

My short term goals are:

* Have three articles that aren't totally embarrassing in the pandoc-posts project
* Write a better build script / or find an off the shelf solution that meets my needs. 
* Fixup the connect page

My medium term goals are:

* Template the posts to include download link to pdf version
* Include some projects 
* Perhaps host some documentation, though this is pending having a project that's worth documenting
* To go with above, allow build script to build and include documentation in a clean way

My long term goals are:

* Seperate build system / templater from the webpage source
* Include fancier front page options for sorting through options
* Include a source option
* Include at least one webGL / javascript interactive project

Some nifty ideas that might be worth implementing:

* That progress bar that quantamagazine has on their articles is awesome. 

Some Post ideas:

* Talk about cargo cache commands and how you use them
* Talk about nvim setup, or at least one useful trick for configuring SpaceVim
* Create Context Free Grammer cheatsheet
* Walk through a cool math problem to show off all that awesome KaTeX
* Introduce some notation and explain its tradeoffs. Like bra-ket, or Einstein summation. 
* Take some notes on the many papers you think you've read, maybe a prolog implementation paper
