a = document.getElementsByTagName("a")
i = 0

while i < a.length
  a[i].onclick = ->
    window.location = @getAttribute("href")
    false
  i++