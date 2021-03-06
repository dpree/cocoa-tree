class @PodsLoader
  delegate: null
  requests: []
  running: 0
  finished: 0
  constructor: (seedsURL, chunk_index) ->
    @seedsURL = seedsURL
    @chunk_index = chunk_index
  progress: ->
    @finished / (@finished + @running)
  cancel: ->
    for request in @requests
      request.abort()
    @requests = []
    @running = 0
    @finished = 0
  loadPods: ->
    @cancel()
    for chunk in @chunk_index
      @loadPodsChunk(chunk[0])
  loadPodsChunk: (chunk_id) ->
    loader = @
    xhr = new XMLHttpRequest()
    xhr.open('GET', @seedsURL+'/'+chunk_id+'.json', true)
    # xhr.responseType = 'arraybuffer'
    xhr.onload = (e) ->
      # pods = msgpack.decode(@response)
      pods = JSON.parse(@response)
      loader.podsChunkDidLoad(chunk_id, pods)
    xhr.send()
    @requests.push(xhr)
    @running += 1
  podsChunkDidLoad: (chunk_id, pods) ->
    @running -= 1
    @finished += 1
    if @delegate
      if @delegate.didLoad
        @delegate.didLoad(chunk_id, pods)
      if @delegate.didLoadAll
        if @progress() == 1
          @delegate.didLoadAll()
