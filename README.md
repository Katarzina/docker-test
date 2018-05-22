# docker-test
First Docker image Hello guys

Task from kiwi.com :

---------------------------------------------------------------------

As your entry task, we'd like you to provide us with a built and working Docker image.

You can share your code with us via repo. BONUS: multiple logical commits are preferable to just one.

*Requirements*

- A simple html site, with the title "I want to attend the Kiwi.com Weekend in the Cloud"

 - A simple site will be enough, but feel free to get creative.

- Use Nginx as your web server

 - BONUS: use SSL

  - Hint: use Let's Encrypt

    - https://letsencrypt.org/docs/certificates-for-localhost/

- Use Docker Hub to build and share your image

------------------------------------------------------------------------

Generate certificate:

openssl req -x509 -out localhost.crt -keyout localhost.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")



sudo docker-compose up --build

netstat -antp

   We can look on up 8080 and 4443 port.

curl -v https://localhost:8080

curl -v --cacert localhost.crt https://localhost:4443

 Trying 127.0.0.1...
* Connected to localhost (127.0.0.1) port 4443 (#0)
* found 1 certificates in localhost.crt
* found 597 certificates in /etc/ssl/certs
* ALPN, offering http/1.1
* SSL connection using TLS1.2 / ECDHE_RSA_AES_128_GCM_SHA256
* 	 server certificate verification OK
* 	 server certificate status verification SKIPPED
* 	 common name: localhost (matched)
* 	 server certificate expiration date OK
* 	 server certificate activation date OK
* 	 certificate public key: RSA
* 	 certificate version: #3
* 	 subject: CN=localhost
* 	 start date: Sat, 19 May 2018 14:53:42 GMT
* 	 expire date: Mon, 18 Jun 2018 14:53:42 GMT
* 	 issuer: CN=localhost
* 	 compression: NULL
* ALPN, server did not agree to a protocol
> GET / HTTP/1.1
> Host: localhost:4443
> User-Agent: curl/7.47.0
> Accept: */*
> 
< HTTP/1.1 200 OK
< Server: nginx
< Date: Mon, 21 May 2018 13:59:39 GMT
< Content-Type: text/html
< Content-Length: 289
< Last-Modified: Mon, 21 May 2018 13:48:40 GMT
< Connection: keep-alive
< ETag: "5b02ce38-121"
< Accept-Ranges: bytes
< 
{ [289 bytes data]
100   289  100   289    0     0   1597      0 --:--:-- --:--:-- --:--:--  1605
* Connection #0 to host localhost left intact
