#📝 Totl is a quick script that makes basic website templates

## About
Totl isn't revolutionary and similar dev tools probably already exist (they do). I wanted a faster way to start projects and make the folders and the HTML, CSS, & JS files that went along with it. Totl is a simple tool that simplifies that process. 

## Install

Download Totl to your script folder.

`$ curl -O https://raw.githubusercontent.com/aristotlemanolakos/totl/master/totl.sh`

Update `.bash_profile` with `totl` alias.

`$ cd ~/ && nano .bash_profile`

Add 

`alias totl='bash ~/[PATH_TO_SCRIPT_FOLDER]/totl.sh'`

##End Notes

#### Future Builds
+ Option to quick-install popular frontend frameworks like [Bootstrap](http://getbootstrap.com/), [Bulma](http://bulma.io/), [Miligram](https://milligram.github.io/), [Skeleton](http://getskeleton.com/), [Pure](http://purecss.io/), [Semantic UI](http://semantic-ui.com/), [Materialize](http://materializecss.com/)
+ Templates of common types of websites and boilerplate code snippets
+ Local server for static website development

#### Current Version
0.02 - Added CSS reset.
0.01 - Barebones
