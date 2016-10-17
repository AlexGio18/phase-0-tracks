### What are some common HTTP status codes?
1. 200 OK- means that the server request has succeeded.

2. 403 Forbidden - the server understood the request, but will not fulfill the request.

3. 404 Not Found - the server has not found anything matching the uniform resource identifier (URI).

4. 500 Internal Server Error - the server encountered an unexpected condition/error preventing access to the request.

5. 503 Service Unavailable - the web server can not handle the HTTP request at this time. Some common reasons are
	* server crash
	* server maintenance
	* server overload
	* server maliciously being attacked
	* a website has used up its allotted bandwidth
	* server may be forbidden to return the requested document
	- 503 is usually temporary condition until the server is fixed.

### What is the difference between a GET request and a POST request? When might each be used?
They are the two most used HTTP methods. GET is used to retrieve remote data, and POST is used
to insert/update remote data. There are quite a few differences between the two:

**GET**
- remain in search history because the parameters are part of the URL
- can be bookmarked
- can be refreshed
- easier to hack
- only ASCII characters allowed
- less secure because data is part of the URL
- restricted URL length
- should not be used when sending passwords or sensitive information
- visible in the browsers address bar
- can be cached

**POST**
- not saved in browser history
- can't be bookmarked
- browser data will need to be resubmitteed when refreshed
- more difficult to hack
- no restrictions on data type
- more secure because parameters are not stored in browser history or in web server logs
- no restrictions on data length
- used for sending passwords/ other sensitive information
- method variables are not displayed in the URL
- not cached

GET method is recommended when submitting "idempotent" forms, or forms that do not
have side effects. This is appopriate to handle database queries.

POST is recommended when form data constains non-ASCII characters or large sets of data,
where there are hundreds of characters, becaue GET cannot handle long URLs. Sites that use
passwords or sensitive information, like email data, it is recommended to use POST.

### What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Websites save information about the user as cookies. Cookies are data files stored on the user's computer,
that is accessed during HTTP requests, that will read the code from the cookie file to tailor the users
experience. An example of this is accessing a logged in site, the cookie holds your password/username for 
easy access.