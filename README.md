# How to use this image.

Run the default Tomcat server (`CMD ["catalina.sh", "run"]`):

	docker run -it --rm tomcat:8.0

You can test it by visiting `http://container-ip:8080` in a browser or, if you need access outside the host, on port 8888:

	docker run -it --rm -p 8888:8080 tomcat:8.0

You can then go to `http://localhost:8888` or `http://host-ip:8888` in a browser.
