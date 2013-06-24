((document, navigator, standalone) ->
  
  # prevents links from apps from oppening in mobile safari
  # this javascript must be the first script in your <head>
  if (standalone of navigator) and navigator[standalone]
    curnode = undefined
    location = document.location
    stop = /^(a|html)$/i
    document.addEventListener "click", ((e) ->
      curnode = e.target
      curnode = curnode.parentNode  until (stop).test(curnode.nodeName)
      if "href" of curnode and (curnode.href.indexOf("http") or ~curnode.href.indexOf(location.host))
        e.preventDefault()
        location.href = curnode.href
    ), false
) document, window.navigator, "standalone"