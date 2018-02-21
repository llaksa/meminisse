/*
Many JavaScript libraries use $ as a function or variable name, just as jQuery does. In jQuery's case, $ is just an alias for jQuery, so all functionality is available without using $. If you need to use another JavaScript library alongside jQuery, return control of $ back to the other library with a call to $.noConflict(). Old references of $ are saved during jQuery initialization; noConflict() simply restores them.
*/

$(document).ready(function(){
  alert("Me ejecuto tercero")
})

$().ready(function() {
  alert("Me ejecuto cuarto")
})

window.onload = function() {
  alert("Me ejecuto segundo")
}

$(alert("Soy lo mismo que el tercero y el cuarto, pero soy la sintaxis más corta y me ejecuto antes que todos"))









// ----------------------------------------------------------------------------------------
// Selectors in jQuery: clases, id, elements, pseudoclasses, pseudoelemnts, etc like CSS!
// ----------------------------------------------------------------------------------------

$(function() {
  const header = $('header')
  const title = $('h1', header[0])
  console.log(title)
})


$(function() {
  const header = document.getElementById('app-header')
  const $header = $(header)
})


$(function() {
  const headings = $('h1, h2')
  conole.log(headings)
})


$(function() {
  const header = document.getElementById('app-header')
  const selection = $([ document, header ])
})


$(function() {
  $(':input') // <input>, <textarea>
  $(':selected') // radio buttons
  $('also-pseudoclasses-or-pseudoelemnts')
})










// ----------------------------------------------------------------------------------------
// The jQuery Object:
// ----------------------------------------------------------------------------------------

const target = document.getElementById('target')

$(target).html("<td>Hello<b>World</b>!</td>")







const target = document.getElementById('target')
const newElement = document.createElement('div')
$(target).after(newElement)

