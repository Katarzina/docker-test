# docker-test
First Docker image Hello guys

Task from kiwi.com
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

