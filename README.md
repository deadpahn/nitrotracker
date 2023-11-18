# WELCOME TO MY BUILD OF NITROTRACKER

After hours and hours of trying to figure out what the hell is going on, I finally figured out how to compile this.

# Disclaimer

This is a personal development branch that I forked from the talented asiekierka's unofficial (since the official project isn't being maintained anymore). Click their username up top to follow the breadcrumbs back to the OG branch by the very talented and now Google AI hotshot 0xtob.

# Why this branch?

Look, I'm not a demo scene bit flipper or hardware wizard. I'm a 100 IQ dude from Montreal who has been a web developer for most of his life. Nitrotracker has been my primary DAW since around 2009. I figured, instead of bothering the core developers, who are hard at work maximizing every cycle from the legendary Nintendo DS/DSi, I would see if I can add some features I want to see and maybe fix a few bugs along the way.

# I'm a moron

This branch is designed to make building features a lot easier. I'll include a lot of stuff to help automate the process. It was a pain in the ass to get everything going, I'm not gonna lie. If I can somehow help remove that friction, once you get into the code, it ain't so bad.

# This is super not official

It's probably best to do pull requests for your features on Adrian's branch. This is more designed to get you up and running in a few minutes than spend an entire afternoon figuring out how this works. This is the wild west; documentation is non-existent or fragmented, there is not a lot of handholding, and if you don't have a grasp on what is happening, it can be a pain in the butt.

# Credits/Licenses
For more information, check the `credits.txt` and `licenses.txt`.

- `./dsmi` is also forked from asiekierka. It's probably a good idea to git clone that repository before building, but for simplicity, I'm including it here.
- `./libntxm` is also forked from asiekierka. ^same

# Alright, how do I install and build this?!
Very work in progress instructions but here goes:

git clone this branch and enter it via the sCaRy TeRmInAl.

run:

`git clone git@github.com:asiekierka/dsmi.git`

`git clone git@github.com:asiekierka/libntxm.git`

Now we need to do a bunch of stuff (download devkitpro docker image and configure things):

`docker-compose build`

after everything downloads and stuff run

`docker-compose up`

### Enter the container:

`docker-compose exec devkitpro /bin/bash`

### once in the container run:

`apt install pip`

`pip install pillow`

`pip install image`
(I know I should have this in the Dockerfile but it wasn't working I'll fix it later)
 
# How the hell do I make the .nds file now? 

In the root folder you can run: 

`docker-compose exec devkitpro make`

## OR 

you can use:

`docker-compose exec devkitpro /bin/bash`

and navigate the file system and use make from there.

# Final thoughts
### Devkitpro examples
If you look in the /opt folder of the Docker container, you will find an 'examples' folder for devkitpro. It has a lot of great code for starting development. I recommend taking a look for some practice, if only to ensure that you have set everything up properly.

Happy Hacking and obviously huge thanks to everyone involved check out their github projects follow them on twitter etc. This is just a personal branch for myself.