Timeline
========

This is a quick spike on the idea of a service which receives, and then lets
you slice by user and type, information about actions which occur in your
application.

Basically, from your application, send information about actions your users
perform (creating some bit of content, editing it, making a comment, logging
in) with a handy, dandy client wrapper which doesn't exist. This sends the data
to the service, which doesn't exist yet either. Then it can be displayed
chronologically, accessed via API for viewing within your app (like in a
Dashboard), or graphed from the JSON data with [d3.js].

[d3.js]:http://d3js.org/

TODO
----

* Accept JSON HTTP requests to record entries.
* Accept UDP packets to record entries with 0 latency.
* Build a Ruby client wrapper to interact with the service.
* Build a Node.js client wrapper to interact with the service.
* Provide some kind of configuration to map user ID 123 to some meaningful
  piece of data (e.g., http://example.com/admin/user/123 or "Joe User")
* Provide some kind of configuration to map action page-create to a meaningful
  description (e.g., "Created a page") and map the metadata to useful data
  (e.g., accepting the ID and mapping to a URL to the page in question).
* Consider how to secure access to the service.
* Consider how best to open-source or productize the service.
