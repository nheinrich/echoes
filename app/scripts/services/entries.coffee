@app.factory 'Entries', ($resource) ->
  return $resource('/scripts/data/entries.json')
