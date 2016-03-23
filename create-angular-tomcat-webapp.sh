#!/bin/bash
#
# Author      : A.R. Winters
# Version     : 01.00.00
# Date        : 01-01-2016
#
# Example     :  ./create-angular-tomcat-webapp.sh <packagename>
# Description : NFgateway Sample Application Directory Structure 



### Create Main Directories - Tomcat / Guacamole
mkdir $1	                   								              # Create Package directory
scr_dir=`pwd`	                                                                                              # Remember This Script Dir
cd $1          											              # Change to Package Dir
pkg_dir=`pwd`											              # Remember Package Dir
cp $scr_dir/files/pom.xml $pkg_dir		        				                      # Copy sample Maven pom.xml file

mkdir -p $pkg_dir/src/main/webapp/WEB-INF                             				              # Create directories for Guacamole
cp $scr_dir/files/index.html $pkg_dir/src/main/webapp                                                         # Copy sample index.html file
cp $scr_dir/files/web.xml $pkg_dir/src/main/webapp/WEB-INF                                                    # Copy sample web.xml file

mkdir -p $pkg_dir/src/main/java/org/glyptodon/guacamole/net/example					      # Directory for Guacamole Tunnel Servlet
touch $pkg_dir/src/main/java/org/glyptodon/guacamole/net/example/TutorialGuacamoleTunnelServlet.java	      # Create Guacamole Tunnel Servlet file

### Create Main Directories - Angulare 2.0
mkdir $pkg_dir/src/main/webapp/app								      	      # Create Angular Directories
mkdir $pkg_dir/src/main/webapp/node_modules $pkg_dir/src/main/webapp/typings	      		      	      # Create Angular Directories
touch $pkg_dir/src/main/webapp/package.json $pkg_dir/src/main/webapp/styles.css                               # Create Angular standard files (index.html already created)
touch $pkg_dir/src/main/webapp/tsconfig.json $pkg_dir/src/main/webapp/typings.json                            # Create Angular standard files (index.html already created)
touch $pkg_dir/src/main/webapp/app/app.component.ts
touch $pkg_dir/src/main/webapp/app/main.ts

### Change to packagedir
chmod 775 $pkg_dir
tree $pkg_dir
cd $pkg_dir
