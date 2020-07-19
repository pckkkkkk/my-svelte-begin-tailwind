@app
begin-app

@static

@http
get /hi

@tables
data
  scopeID *String
  dataID **String
  ttl TTL
