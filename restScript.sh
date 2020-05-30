docker stop graphite
docker rm graphite
docker run -d\
 --name graphite\
 --restart=always\
 -v /home/igor/graphite-metrics:/opt/graphite/storage/whisper\
 -p 81:81\
 -p 2003-2004:2003-2004\
 -p 2023-2024:2023-2024\
 -p 8125:8125/udp\
 -p 8126:8126\
 hopsoft/graphite-statsd



