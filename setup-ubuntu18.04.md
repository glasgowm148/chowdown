###Ubuntu 16.04 installation instructions.###<br>
##Author: Josh Pickard; linuxhelp.sytes.net##<br>
#############################################<br>
In order for chowdown to work we need jekyll, a static site generator, to generate the site. We need to setup the dependencies first
<br>Of course it's best practice to insure we're up to date.<br>
<code> sudo apt update && sudo apt upgrade </code><br><br>Now for a few dependencies<br><code>sudo apt install ruby ruby-dev build-essential</code><br><br>
Then it is considered best practice not to run ruby or ruby gems as root. So we'll set up a specific environment for a non root user<br>
<code>echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc</code><br>
<code>echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc</code><br>
<code>echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc</code><br>
<code>source ~/.bashrc</code><br>
Now to install jekyll<br>
<code>gem install jekyll bundler</code>
<br>If you get an error installing bundler try installing <code>bundle</code><br>
Now to once again insure we're up to date<br>
<code>gem update --system</code><br>
<code>gem update jekyll</code><br>
Now that jekyll is installed and ready you go into the directory you want to run chowdown in.<br>
<code>cd /var/www</code><br>
We can pull chowdown from github.<br>
<code>git clone https://github.com/seanlane/chowdown.git</code><br>
For me I use a different user than root when hosting webpages. <br>
<code>sudo chown -R $USER:$USER chowdown</code>
<br><code>cd chowdown</code><br>
To finalize installing and preparing chowdown<br>
<code>bundler install</code><br>
Though all instructions and tutorials say "bundler" I had to run<br>
<code>bundle install</code>
<br>So if you have any issues try this
Modify the _config.yml as needed and then run<br>
<code>jekyll build</code><br>
The newly created site is in the _site folder as index.html.<br> I pointed my nginx webserver at this file and created a jekyll --watch daemon to actively watch for changes to the website or added recipes. <br>
To host the site on gh-pages the readme suggests the instructions <a href="https://stackoverflow.com/questions/17835937/how-do-i-push-jekyll-site-directory-to-gh-pages-branch-and-leave-the-source-in/35798092#35798092">here</a> <br>
For instructions on creating a daemon that will start when the machine starts<br> and actively apply changes or add recipes go to <a href="linuxhelp.sytes.net/daemons.html">linuxhelp.sytes.net/daemons.html</a><br>
Otherwise after any changes or additions run <br>
<code>jekyll build</code><br>
Or you can have it change in real time for a designated period using <br>
<code>jekyll serve</code><br>
Much credit is due to clarklabs for creating chowdown and to seanlane for making it easier to understand and install.
