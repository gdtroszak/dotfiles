local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

return {
  s(
    'websiteboiler',
    fmt(
      [[
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>{} - Greg Troszak</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{}">

    <link rel="icon" sizes="48x48" href="/favicon.ico">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" sizes="any" href="/favicon.svg" type="image/svg+xml">
    <link rel="stylesheet" href="/style.css">
  </head>
  <body>
    <nav>
      <a href="/">Home</a>
      <a href="/now">Now</a>
      <a href="/slashes">/</a>
    </nav>
    <main>
      <h1>{}</h1>
      {}
    </main>
    <footer>
      <small>
        Have thoughts? Say <a href="mailto:hello@gregtroszak.me">hello</a>.
      </small>
    </footer>
  </body>
</html>
      ]],
      {
        i(1, 'Page Title'),
        i(2, 'Page description'),
        i(3, 'Page Title'),
        i(4, '<p>Your content here...</p>'),
      }
    )
  ),
}
