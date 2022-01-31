My results from Sanjeev Thiyagarajan's youtube video
https://www.youtube.com/watch?v=gm_L69NHuHM

TODO:
    get rid of local node_modules directory
    get dev and prod to ru  simultaneously (prod @ 4000, dev @ 4001) 


alias dcu="docker-compose up -d"

alias dcub="docker-compose up -d --build"

Using 2 files
    alias dev="docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d"
    alias devb="docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build"
    alias devd="docker-compose -f docker-compose.yml -f docker-compose.dev.yml down -v"

    alias prod="docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d"
    alias prodd="docker-compose -f docker-compose.yml -f docker-compose.prod.yml down -v"

Using 1 file
    alias dev="docker-compose -f docker-compose.dev1.yml up -d"
    alias devb="docker-compose -f docker-compose.dev1.yml up -d --build"
    alias devd="docker-compose -f docker-compose.dev1.yml down -v"

    alias prod="docker-compose -f docker-compose.prod1.yml up -d"
    alias prodb="docker-compose -f docker-compose.prod1.yml up -d --build"
    alias prodd="docker-compose -f docker-compose.prod1.yml down -v"




alias dcd="docker-compose down -v"
