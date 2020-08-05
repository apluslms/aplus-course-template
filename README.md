## A course template for A-plus learning environment

This course template contains the basic configuration to start authoring a new course for the [A+ e-learning system](https://plus.cs.aalto.fi/)
This template can be freely modified and adapted to your needs. 

## Requirements

This course templated has been tested in Ubuntu Linux environment. Nevertheless, this course should also work on any
Unix / Linux / Mac environment. In order to run the course locally, you should install the following software.

- [git](https://git-scm.com/)
- [make](https://www.gnu.org/software/make/)
- [docker](https://docs.docker.com/engine/installation/)
- [docker-compose](https://docs.docker.com/compose/install/) - [Recommended Instalaltion](https://gist.github.com/jaguarfi/2e8dc73a68b6abe79989dc7fef92bf4a)

All other software runs inside [Docker](https://www.docker.com/) containers.

## Download

1. Git clone this repository. E.g.:

   `git clone --recursive git@github.com:apluslms/aplus-course-template.git <name of your course>`

   or

   `git clone --recursive git@github.com:apluslms/aplus-course-template.git <name of your course>`

2. If you cloned the repository without using the `--recursive` flag, you must initialise the
   [A-plus-rst-tools](https://github.com/apluslms/a-plus-rst-tools) submodule manually.

   `git submodule init && git submodule update`

## Run

1. Open the terminal, go to the course directory and type `./docker-compile.sh` for compiling the course. During the 
   compilation the **_build** directory is created. This directory will contain all the HTML, and YAML files that are 
   generated from the RST source files. The **_build** directory will also include all the static files such as images, 
   CSS, JS and downloadable files.

   Another option for compiling the course is to use the `./docker-fast-compile.sh` script. This script, as its name
   suggests, compile the course slightly faster. The end result will be the same, but there is a slight difference
   between these two commands.
   
   The difference between the two compilation script is that  the `./docker-compile.sh` script clean the cached content, 
   while the `./docker-fast-compile.sh` makes use of this cached content and only compile the files have been changed. 


2. Open the terminal, go to the course director and type `./docker-up.sh` to run the course in a web browser. If the 
   `./docker-up.sh` command run successfully, you must be able to access your course in any web browser in the 
   following URL http://localhost:8000

> ### ❗️ Important
> 
> You should download new containers with `docker-compose pull` at least yearly or every time before creating a new course.

3. Once in the http://localhost:8000 you can use the following users to login. Different users have different privileges.

   | User      | Password  |
   | --------- | --------- |
   | root      | root      |
   | teacher   | teacher   |
   | assistant | assistant |
   | student   | student   |

## Save your work

In order to save your work and publish the course in [A+ e-learning system](https://plus.cs.aalto.fi/) you must store
the course project in <version.aalto.fi>. 

> ### ❗️ Important
>
> We **STRONGLY** recommend storing the course under the [course group](https://version.aalto.fi/gitlab/course). If you 
> do not have privileges to do so. You can send an email to <aplusguru@cs.aalto.fi> (We will set up the repository for 
> you).
> Private repositories are allowed, but if you decide to use private repositories for any reason. You **MUST** add the
> following people as "reporters" in your repository.
> - Teemu Lehtinen
> - Jaakko Kantojärvi
> - Markku Riekkinen
> - Jhosimar Aguacia
.
## Additional information

**A+** has a wide variety of tools and configurations. Therefore, you must check all the different sources of information
available on our webpages and repositories.

- [A+ webpage](https://apluslms.github.io/)
- [A+ Manual](https://plus.cs.aalto.fi/aplus-manual/master/)
- [A+ GitHub organization](https://github.com/apluslms/)
- [LeTech GitHub organization](https://github.com/Aalto-LeTech)
- [EDIT Wiki](https://wiki.aalto.fi/display/EDIT/)

## Contact us

Contact us by email: <aplusguru@cs.aalto.fi
Contact us in Slack: <https://apluslms.slack.com/>, channel:#a-plus-help 
