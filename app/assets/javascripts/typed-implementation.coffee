ready = ->
  Typed.new '.element',
    strings: [
      'This is my personal website.',
      'Have a look around and feel free to contact me if you have any questions or thoughts.'
    ]
    typeSpeed: 5
  return
$(document).ready ready
$(document).on 'turbolinks:load', ready
