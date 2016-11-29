docker build -t grocerest/http2https .
docker run -e PORT=4000 -p 4000:4000 grocerest/http2https
