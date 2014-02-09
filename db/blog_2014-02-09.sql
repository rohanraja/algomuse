# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: blog
# Generation Time: 2014-02-09 14:29:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;

INSERT INTO `admins` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`)
VALUES
	(1,'rohanraja9@gmail.com','$2a$10$VUerieV6qCnzZCE/uFpngeMBbYRxIhwIQVV0NceoPtoOx2wVGPC82',NULL,NULL,NULL,3,'2014-02-09 05:59:55','2014-02-09 05:53:45','10.3.100.211','10.3.100.211','2014-02-09 05:48:41','2014-02-09 05:59:55');

/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo_file` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url_name` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `logo_file`, `field`, `created_at`, `updated_at`, `url_name`, `imgurl`)
VALUES
	(1,'Python','python.jpg','Coding','2014-01-23 12:17:19','2014-01-26 06:23:45','python',NULL),
	(2,'Ruby on Rails','ror.png','Web','2014-01-23 12:17:32','2014-01-26 06:23:45','ruby-on-rails',NULL),
	(3,'PHP','php.jpg','Web','2014-01-23 13:47:26','2014-01-26 06:23:45','php',NULL),
	(4,'C/C++','cpp.jpg','Coding','2014-01-23 13:47:40','2014-01-26 06:23:45','c-c',NULL),
	(5,'Arduino','ard.jpg','Electronics','2014-01-23 13:47:53','2014-01-26 06:23:45','arduino',NULL),
	(6,'Raspberry Pi','rpi.jpg','Electronics','2014-01-23 13:48:02','2014-01-26 06:23:45','raspberry-pi',NULL),
	(7,'Embedded C','emc.jpg','Electronics','2014-01-23 13:48:11','2014-01-26 06:23:45','embedded-c',NULL);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories_posts`;

CREATE TABLE `categories_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

LOCK TABLES `categories_posts` WRITE;
/*!40000 ALTER TABLE `categories_posts` DISABLE KEYS */;

INSERT INTO `categories_posts` (`id`, `category_id`, `post_id`)
VALUES
	(60,2,5),
	(65,2,1),
	(75,1,7),
	(78,6,6),
	(83,2,8);

/*!40000 ALTER TABLE `categories_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `urltext` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `brief` text,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `body`, `category_id`, `user_id`, `active`, `urltext`, `created_at`, `updated_at`, `brief`, `imgurl`)
VALUES
	(1,'Install Ruby on Rails on Mac OSX 10.7 - 10.9','In this tutorial, you will learn how to install Ruby on Rails on Macs running OS newer than OSX Lion. As you’d have guessed, Ruby on Rails requires installation of Ruby. It is available by default in OS X but we need to get the latest version to get Rails working. After installing Ruby, we install rails as a ruby-gem. We will find about that later.\r\n\r\nIf you want to quickly install Rails and don’t care to read this reference, just fire up your Terminal application and run the highlighted commands of this tutorial chronologically.\r\n<hr>\r\n<b>Step 1.   Install OSX Command Line Tools </b>\r\n<br><br>\r\n\r\nMany open source applications on Unix systems like OS X get installed by downloading source code and compiling it on the target machine.  Ruby on Rails also requires some tools and dependencies that need to be compiled locally. The compilation tools are not installed by default in OS X. To install them we need to install the OS X Command Line Tools as follows:\r\n\r\nXcode 4.x and 5.0 :\r\n\r\n•	Search for Xcode in Mac App Store and install it. It’s free! (You will need to login with your Apple ID before installing)\r\n\r\n•	In Xcode, go to Preferences -> Downloads-> Components and click “Install Command Line Tools”.\r\n\r\nXcode 5.0.1 in OSX Mavericks:\r\n\r\n•	Install Xcode as above.\r\n\r\n•	Open Terminal and run the following command:\r\n\r\n<code lang=\"bash\">brew install git</code>\r\n<hr>\r\n<b>Step 2. Install Homebrew</b>\r\n<br><br>\r\n\r\nHomebrew, quoted as the “missing package manager of OS X”, makes installation of open source applications a breeze. Using homebrew, you can install applications simply by running commands like “brew install app-name”. \r\n\r\nWe need to install Homebrew because Ruby requires some packages, which need to be installed using homebrew. To install homebrew, run the following command in the Terminal:\r\n\r\n<code language=\"bash\">ruby -e \"$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)\"</code>\r\n\r\nAfter installation, run the following command:\r\n\r\n<code language=\"bash\">brew doctor</code>\r\n\r\nThis commands checks for any errors or depreciations in the installation of homebrew. If any errors are reported follow the instructions to rectify them. Now to update homebrew with the latest “formulas”, run the following command:\r\n\r\n<code language=\"bash\">brew update</code>\r\n<hr>\r\n<b>Step 3. Install Ruby on Rails with RVM (Ruby Version Manager)</b>\r\n<br><br>\r\nWhen working with Ruby, which version you are using plays an important role. There might be situations where you’d need to switch to a different version of ruby for running a particular app. RVM takes control of the Ruby interpreter installed on your system and provides on the fly Ruby version switching.\r\n\r\nAnother great feature of RVM is the ability to create gemsets. A gemset is a collection of ruby-gems. When RVM selects a particular gemset, only the gems listed in that gemset is made available to Ruby. This provides sandboxing of ruby-gems.\r\n\r\nNow RVM provides three installation options: \r\n\r\n1.	RVM with Rails and Ruby :\r\n\r\ncurl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable\r\n\r\nThis single command would install RVM, with latest Rails and Ruby interpreter. This is the easiest way to get Ruby on Rails installed. You may be asked to enter root password during the installation process, which can take a long time depending on your internet connection. \r\n\r\nIf this command runs successfully and you see mostly green and less red on your terminal, congratulations, you have Ruby on Rails installed on your system. Jump to Step 4. Testing your Rails Installation.\r\n\r\n\r\n2.	RVM with Ruby :\r\n\r\n\r\ncurl -L https://get.rvm.io | bash -s stable –ruby\r\n\r\nThis would install RVM with the latest version of Ruby. The next step would be to install RubyGems manager by running the following:\r\n\r\nrvm rubygems current\r\n\r\nNow that rubygems is installed, install rails as follows:\r\n\r\ngem install rails\r\n\r\nAgain, this is going to take long time since it will download and install all the dependencies of rails but be patient, after this step, you will have Rails installed. Continue to Step 4. Testing your Rails Installation.\r\n\r\n3.	Standalone RVM:\r\n\r\ncurl -L https://get.rvm.io | bash -s stable\r\n\r\nIt will only install RVM. After this you need to run the following series of commands:\r\n\r\nsource ~/.rvm/scripts/rvm\r\nrvm requirements\r\nrvm install ruby\r\nrvm use ruby –default\r\nrvm rubygems current\r\ngem install rails\r\n\r\nAs you can see this is more tedious than previous methods.\r\n\r\n<hr>\r\n<b>Step 4. Testing your Rails installation</b>\r\n<br><br>\r\nNow that you have successfully installed Ruby on Rails on your Mac, its time to create a Hello World Rails application to see if everything is in order. \r\n\r\nNote: I highly recommend using iTerm instead of the default Terminal application.\r\n\r\nIn a new Terminal tab, run the following command:\r\n\r\nrails new helloworld\r\n\r\nYou will see a list of commands running. After this, a new folder named ‘helloworld’ is created in the current directory. Go to that directory: \r\n\r\ncd helloworld \r\nNow run the following command to run a local rails server:\r\n\r\nrails server\r\n\r\nOpen your favorite browser and open this link http://localhost:3000 . If everything goes OK you should see the welcome page of Ruby on Rails.\r\n<hr>',2,1,1,'install-ruby-on-rails-on-mac-osx-10-7-10-9','2014-01-19 16:35:10','2014-02-05 00:01:27','In this article you will learn how to install Ruby on Rails on a machine running Mac OSX 10.7 - 10.9. We first install homebrew followed by ruby, gemsets and finally rails.','ror.jpg'),
	(5,'Getting Started with Rails - Part 1','First, ensure that you have rails installed on your system by running the following command : \r\n\r\n<code language=\"bash\">rails –v</code>\r\n\r\nIf not, goto <a href= \'/ruby-on-rails/install-ruby-on-rails-on-mac-osx-10-7-10-9\'>this tutorial</a> to install rails on your system.\r\n\r\nIn this tutorial series, we are going to develop a movie rating website, a site which shows a list of movies and asks the user to rate movies for ranking. (a mini IMDB).\r\n\r\nIn this part, we get familiar with working mechanism of rails. We will also start with our project and build two simple pages – \r\n\r\n1.	index page\r\n2.	about page\r\n\r\n<br>\r\n<b class=\'step\'>\r\nStep 1 : Create a new project\r\n</b><hr>\r\nFire up your terminal and run the following command\r\n\r\n<code language=\"bash\">rails new moviemax</code>\r\n\r\nThis command creates a new folder while automatically creating files and folders of a typical rails app. Now switch to this new directory by \r\n\r\n<code language=\"bash\">cd moviemax</code>\r\n\r\nLaunch the rails server by executing the following command and go to <a href=\'http://localhost:3000\'>http://localhost:3000</a> to check if everything is fine.\r\n\r\n<code language=\"bash\">rails server</code>\r\n<br>\r\n<b class=\'step\'>\r\nViews, Controllers and routing:\r\n</b><hr>\r\n\r\nBefore we proceed, let us understand what happens when a web browser makes request to a rails server.\r\n\r\n<img src=\"/assets/rails_gs_1.gif\" >\r\n\r\n<b>Web Request:</b> The user first inputs url on the web browser or clicks a link on a web page to generate a request to the server.<br><br><b>Router:</b> The router receives the request, analyses the url and the http keywords (e.g. GET, POST) and calls the corresponding controller with the appropriate action.<br><br><b>Controller:</b> Contains code on the server which contains the action requested by the url.<br><br><b>Action:</b> A ruby method, called inside the controller, which performs server side actions and passes data to the view.<br><br><b>View:</b> The code which is rendered to generate the HTML/CSS/JS elements displayed on the web browser.\r\n\r\n<br>\r\n<b class=\'step\'>\r\nStep 2: Create routes, controllers and views for index page and about us page\r\n</b>\r\n<hr>\r\nFor creating controllers, actions and corresponding routes, rails has got some shortcut commands, called generators. Open terminal and go to the rails project directory and enter the following command:\r\n\r\n<code language=\"bash\">rails generate controller Home index about</code>\r\n\r\nThis will automatically generate some files and folders in the rails project.\r\n<br>\r\n<b class=\'step\'>\r\nStep 3 : Run server and open links in browser\r\n</b>\r\n<hr>\r\nIn the above command, following important files are generated:\r\n\r\n	<b>app/controllers/home_controller.rb:</b> The ruby source which contains the actions as methods (index and about) of the controller, all in ruby. <br><br><b>app/views/home/index.html.erb:</b> The view file for index action of home controller, it contains code in HTML + Ruby, thus embedded ruby HTML. Embedded ruby allows data from server (action/controller) to be transported to the views.<br><br><b>app/views/home/about.html.erb:</b> The view file for about action of home controller.<br><br><b>config/routes.rb:</b> This file is not created but modified to add routing information of the new controller and actions we just created.\r\n\r\n <code language=\"ruby\">get \"home/index\"\r\nget \"home/about\"</code>\r\n\r\n	This instructs the router that if a request with url “home/index” is received, the go to the home controller and run the index action. So to test that,  open your browser and go to <a href=\'http://localhost:3000/home/index\'>http://localhost:3000/home/index</a> and <a href=\'http://localhost:3000/home/index\'>http://localhost:3000/home/about</a>.\r\n\r\nThis shows the default content of the index and about views. We need to modify that to our content.\r\n<br>\r\n<b class=\'step\'>\r\nStep 4: Modify index and about view content\r\n</b>\r\n<hr>\r\nBefore proceeding, ensure you have a text editor application installed on your system. I personally prefer to use Sublime Text 2. But your choice may differ so choose accordingly.\r\n\r\nAlso, ensure your text editor can open folders and allows easy access to files in the folder. This will help a lot later as you deal with different files in the rails folder when working with a rails project.\r\n\r\nTo modify the index view, open the index view file which is \r\napp/views/home/index.html.erb and change the content to following :\r\n\r\n<code language=\"html\"><h1> MovieMax – Movie Database </h1></code>\r\n\r\nAnd for about view, open file app/views/home/about.html.erb and set the content to : \r\n\r\n<code language=\"html\"><h2> About MovieMax </h2>\r\n<p> This website will contain a list of movies. Each movie will have information on director, a cover picture, movie title, language </p></code>\r\n\r\n \r\n\r\n\r\n',2,NULL,NULL,'getting-started-with-rails-part-1','2014-01-28 13:10:31','2014-02-04 10:23:30','Ruby on Rails is a popular web development framework, with a Model-View-Controller architecture. It\'s ‘convention over configuration’ philosophy enables quick web development and hence is popular among startups.','lor.jpg'),
	(6,'Talking to your Raspberry pi without any display monitor','<br>\r\n<b class=\'step\'>\r\nStep 1: Install an Rpi Linux OS on SD Card\r\n</b><hr>\r\nFor beginners, the best OS to download is the latest version of Raspbian. Download file and extract.\r\n\r\nWindows: Download this tool to install OS on SD Card\r\n\r\nLinux: Download this tool\r\n\r\nMac: Download this tool\r\n<br>\r\n<b class=\'step\'>\r\nStep 2: Install ‘nmap’ on your machine\r\n</b><hr>\r\nSince our pi does not has any ‘head’ or display, we will talk to out rpi over Ethernet on ssh protocol. When Rpi is booted for the first time, it is automatically allocated an IP using DHCP. And the ssh server daemon is also installed by default which will be listening on port 22. \r\n\r\nUsing nmap, we will scan for IP addresses with port 22 open to find our Rpi’s IP Address to establish communications over ssh.\r\n\r\nDownload nmap from http://nmap.org and install.\r\n<br>\r\n<b class=\'step\'>\r\nStep 3: Find your Ethernet network’s domain\r\n</b><hr>\r\n<br>\r\n<b class=\'step\'>\r\nStep 4: Insert SD Card and boot\r\n</b><hr>\r\nPut the SD Card in the card slot of rpi carefully. Also connect the Ethernet port. And finally connect the power adapter to boot. You should see a red light (indicating power) plus some blinking green light (indicating data read write from SD Card).\r\n\r\nIf no blinking is there, that means the OS was not properly installed on the SD Card. Format the SD Card and try again.\r\n<br>\r\n<b class=\'step\'>\r\nStep 5: Find your rPi’s assigned IP Address \r\n</b><hr>\r\nAfter a minute or so, the blinking should stop and the pi has finished its booting process. It has been assigned an IP address from DHCP. It is also listening for ssh on port 22. \r\n\r\nTo find the auto-assigned IP, fire up your terminal and run the following command:\r\n\r\n<code language=\"bash\">nmap –v –p 22 xxx.xxx.xxx.*</code>\r\n\r\nHere xxx.xxx.xxx is the domain, so it your domain is 192.168.1.xxx, then the command would be:\r\n\r\n<code language=\"bash\">nmap –v –p 22 192.168.1.*</code>\r\n\r\nFrom the results of IP addresses having port 22 open, note down the IP with host name ‘raspberrypi’. That is the IP we are looking for.\r\n<br>\r\n<b class=\'step\'>\r\nStep 6: Connect with your rPi over ssh\r\n</b><hr>\r\nIf your IP address is 192.168.1.225, run the following command to connect with your pi\r\n\r\n<code language=\"bash\">ssh pi@192.168.1.225</code>\r\nfor password input : ‘raspberry’\r\n\r\nFor Windows users : There is no ssh client installed by default. You can download putty from here.\r\n\r\nAnd voila, you have successfully logged into your raspberry pi over ssh. Visit next tutorial to learn how to configure your pi to have a static IP so you won’t have to repeat this whole process the next time.',6,NULL,NULL,'talking-to-your-raspberry-pi-without-any-display-monitor','2014-02-04 23:51:24','2014-02-05 10:39:58','Raspberry Pi is a credit-card sized embedded linux system. It does not has a display or input interface. In this tutorial, you learn how to talk to your pi without any monitor/keyboard/mouse but over Ethernet.','kick_rpi.jpeg'),
	(7,'Learn Python in one hour!','In this tutorial, you will get familiar with the fundamental syntax of python.\r\n<br>\r\n<b class=\'step\'>\r\nPython Scripting Console\r\n</b><hr>\r\nUnlike C/C++, Python is a scripting language. The code executes line-by-line rather than compiling at once. Hence on a console, you write one line of code, and it is compiled and executed then and there only.\r\n\r\nIf you have Mac or Linux, chances are that Python comes preinstalled. To launch the console, open a Terminal window and simply execute the following command:\r\n\r\n<code language=\"bash\">python</code>\r\n\r\nIf python is not installed, go <a href=’http://www.python.org/download/’>Here</a> and follow instructions to install python.\r\n<br>\r\n<b class=\'step\'>\r\nGetting familiar with the python scripting environment\r\n</b><hr>\r\nOpen the python console and run the following\r\n\r\n<code language=\"python\">>> 6 + 4</code>\r\n\r\nAs you can notice, python has actually compiled and executed that statement. This is the power of console. Now lets try assigning data to variables\r\n<br>\r\n<b class=\'step\'>\r\nData and Variables\r\n</b><hr>\r\nVariables can be created on the fly in python. There is no need to specify data type of variable.\r\n \r\n<code language=\"python\">num = 3\r\nresult = num * 9\r\nprint result</code>\r\n<br>\r\n<b class=\'step\'>\r\nArrays/Lists\r\n</b><hr>\r\nIn python, a collection of similar objects is known as list. Below are some examples of list.\r\n\r\n<code language=\"python\">Numlist = [3,5,10,9,4]\r\nStringlist =[“python”, “ruby”, “java”]\r\nprint Numlist[2]\r\nprint Stringlist[0]</code>\r\n<br>\r\n<b class=\'step\'>\r\nIteration over list\r\n</b><hr>\r\nTo iterate over a list, python has a very powerful feature – foreach. Normally, you would find length of the list, then iterate with an increment variable length times. In python, here’s how you can iterate:\r\n\r\n<code language=\"python\">foreach Stringlist as str\r\n	print “The string is – “, str</code>\r\n\r\nThis would have given you a feel of how easy and simple the syntax is.\r\n<br>\r\n<b class=\'step\'>\r\nFunctions/Methods\r\n</b><hr>\r\nIn python, a block of code taking arguments is called a method (similar to functions in c/c++/java). To define a method, we use the def keyword. Also, to define a block of code in python, indentation is used rather than curly braces. This is an excellent approach since it forces you to write code with proper indentation, otherwise your code won’t even compile.\r\n\r\n<code language=\"python\">def sum(a,b)\r\n	result = a + b\r\n	return result</code>\r\n ',1,NULL,NULL,'learn-python-in-one-hour','2014-02-04 23:55:46','2014-02-05 10:25:41','Python is a very powerful, fun to code programming language. With a very simple and close to English syntax, writing codes in python enables more focus on algorithms rather than on syntax and conventions.','lpython.png'),
	(8,'Top 5 Ruby Gems to use in your Rails application','<br>\r\n<b class=\'step\'>\r\n1. Bootstrap-Generators\r\n</b><hr>\r\n\r\n<code language=\"ruby\">gem \'bootstrap-generators\'</code>\r\n\r\n\r\n<a href=‘http://getbookstrap.com\'>Twitter bootstrap</a> is undoubtedly the most popular front-end framework to use for your website. It can easily give a smooth and professional look to any amateur looking website. It is easy to use too once your learn the syntax and conventions.\r\n\r\n\r\nOnce included in your gemfile, you need to modify your rails app in order to include new CSS and Javascript files of bootstrap, as well as changing the views and application layout to adopt Twitter bootstrap style. To do this, a generator is included in this gem. Run the following command in your rails directory to ‘bootstrapify’ your rails app :\r\n\r\n\r\n<code language=\"bash\">rails generate bootstrap:install -f</code>\r\n\r\n This will overwrite your application template to bootstrap style. It will also modify view generator templates to include bootstrap elements in scaffoldings’ views. For e.g. :\r\n\r\n\r\n<code language=\"bash\">rails g scaffold User name:string email:string age:integer</code>\r\n\r\n\r\nNow go to http://localhost:3000/users. You will notice a clean, smooth, bootstrapped layout.\r\n\r\n<br>\r\n<b class=\'step\'>\r\n2. Better_Errors \r\n</b><hr>\r\n\r\n<code language=\"ruby\">group :development do\r\n     gem \'better_errors\'\r\n     gem \'binding of caller\'\r\nend</code>\r\n\r\n\r\nThis is a must have gem if you work on rails. It replaces all the error pages that you encounter when browsing website in production mode. The new error pages are more detailed, have a cleaner interface and provides you with a working web console! Couldn’t have been more awesome.\r\n\r\n\r\nFollowing are some of its features :\r\n\r\n\r\n1. Call Stack trace\r\n2. Shows data in the instance variables\r\n3. Ruby Console have scope of the error block\r\n\r\n<br>\r\n<b class=\'step\'>\r\n3. Devise\n</b><hr>\n\n\n<code language=\"ruby\">gem \'devise\'</code>\n\n\nDevise gem makes adding authentication system to your rails app, a cakewalk. Adapting the ‘convention over configuration’ philosophy of rails, the devise gem has got all the configurations of a typical authentication system ready for you. It provides you with quick starting generators, helpers and an easy to use API to create a secure login system for your app. For quickly creating a user login system, follow these commands:\n\n\n<code language=\"bash\">rails generate devise:install\nrails generate devise User\nrake db:migrate</code>\n\n\nAfter that, restart your rails server. A basic user login system with default parameters is installed. Navigate to http://localhost:3000/users/sign_up to open the user sign up page. To sign in, open http://localhost:3000/users/sign_in. But still this authentication does not protect any controller or action. To add user authentication to any controller, add the following filter at the start of a controller.\n\n<code language=\"ruby\">before_filter :authenticate_user!</code>\n\nTo interact with the functionality of devise, some helpers are provided. Following method demonstrates the usage of these helpers:\n\n\n<code language=\"ruby\">def check_user\n     if user_signed_in?\n          u = User.find(current_user.id)\n          @email = u.email\n          user_session[:token] = generate_hash(u.email)          \n     else\n          @notice = \"Please log-in first\"\n     end\nend</code>\n\nFurther information on this gem can be found <a href=\"https://github.com/plataformatec/devise\">here</a>.\n\n\n<br>\n<b class=\'step\'> \n4. Will Paginate\n</b><hr>\n \n\n<code language=\"ruby\">gem \'will_paginate\'</code>\n \n\nThis gem will add pagination to any model of your rails app in a few lines of code. This gem also provides view helpers that renders navigation links to different pages in HTML. You can then add CSS styling to these rendered links to match them with the styling of your website or to prettify them according to your needs.\n\n\nFor example, if you want to add pagination to your posts model, replace the active record statement in your controller with the following \n\n\n<code language=\"ruby\"> @posts = Post.all.paginate(:page => params[:page], :per_page => 10)</code>\n\nAnd in your view, add the following to place the HTML code of page links\n\n<code language=\"bash\"> <%= will_paginate @posts %></code>\n\n\n<br>\n<b class=\'step\'>\n5. Thinking Sphinx\n</b><hr>\n\n <code language=\"ruby\">gem \'thinking-sphinx\'</code>\n\n',2,NULL,NULL,'top-5-rails-gems-to-use-in-your-application','2014-02-06 13:39:24','2014-02-06 15:41:11','Ruby gems that will enhance productivity as well as provide better functionality and design to your rails application. Believe me, after going through these gems, you will realize how awesome rails framework can be.','topgems.jpg');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table request_texts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `request_texts`;

CREATE TABLE `request_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `body` text,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `request_texts` WRITE;
/*!40000 ALTER TABLE `request_texts` DISABLE KEYS */;

INSERT INTO `request_texts` (`id`, `name`, `email`, `website`, `body`, `ip`, `created_at`, `updated_at`)
VALUES
	(1,'Rohan','rohanraja9@gmail.com','algomuse.com','I want a tutorial on Friends.','10.3.100.211','2014-02-08 22:49:11','2014-02-08 22:49:11'),
	(2,'Sachin','sachin13@gmail.com','sachin','Tut Requeste','10.3.100.211','2014-02-08 22:51:44','2014-02-08 22:51:44'),
	(3,'Rohan','sad','assd','Very nice','10.3.100.211','2014-02-08 22:56:30','2014-02-08 22:56:30');

/*!40000 ALTER TABLE `request_texts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20140119162729'),
	('20140123121107'),
	('20140123121520'),
	('20140123135157'),
	('20140126215506'),
	('20140127090554'),
	('20140208203719'),
	('20140208205121'),
	('20140208205226'),
	('20140209054720');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subs_emails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subs_emails`;

CREATE TABLE `subs_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

LOCK TABLES `subs_emails` WRITE;
/*!40000 ALTER TABLE `subs_emails` DISABLE KEYS */;

INSERT INTO `subs_emails` (`id`, `email`, `created_at`, `updated_at`, `ip`)
VALUES
	(23,'rohanraja9@gmail.com','2014-02-09 03:08:13','2014-02-09 03:08:13','10.3.100.211'),
	(24,'asdc@aass.com','2014-02-09 03:09:52','2014-02-09 03:09:52','10.3.100.211'),
	(25,'rohanraja9@iitkgp.ac.in','2014-02-09 03:10:54','2014-02-09 03:10:54','10.3.100.211'),
	(26,'rohanraja91@gmail.com','2014-02-09 03:16:53','2014-02-09 03:16:53','10.3.100.211'),
	(27,'rohanraja9@gmaill.com','2014-02-09 04:12:20','2014-02-09 04:12:20','10.3.100.211'),
	(28,'yashvijay@gmail.com','2014-02-09 05:19:29','2014-02-09 05:19:29','10.3.100.211'),
	(29,'rohanrajaj9@gmail.com','2014-02-09 07:58:07','2014-02-09 07:58:07','10.3.100.211');

/*!40000 ALTER TABLE `subs_emails` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
