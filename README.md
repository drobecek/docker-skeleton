#Docker skeleton
this is an example and prebuild scripts for using docker with docker compose for develop my projects

## Start
modify the variable `PROJECT` in `bin/exec.sh` and `bin/run.sh` scripts to your name
put your application into the `src` folder
modify the `env/site.conf` nginx configuration file for correct document root folder, it depends on the application.
the `src` folder is mapped to `/code` in container

than run command `bin/run.sh build` to build containers first and next `bin/run.sh up` for start up containers.
than open browser with address `http://lcoalhost:8080` to run your application.

you can enter to the app container through the command`bin/exec.sh bash`

#Licence
MIT
