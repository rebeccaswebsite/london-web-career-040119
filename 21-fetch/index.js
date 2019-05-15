const tbody = document.querySelector('tbody')
const formEl = document.querySelector('#new-book-form')

function addBook (book) {
  const tr = document.createElement('tr')

  tr.innerHTML = `
    <td>${book.title}</td>
    <td>${book.description}</td>
    <td>${book.year}</td>
    <td><button class='delete-btn'>X</button></td>
  `
  tbody.append(tr)

  const deleteBtn = tr.querySelector('.delete-btn')
  deleteBtn.addEventListener('click', function (event) {
    tr.remove()
  })

}

function addBooks (books) {
  // books.forEach(book => addBook(book))
  books.forEach(function (book) { addBook(book) })
}

formEl.addEventListener('submit', function(event) {
	event.preventDefault()

  let book = {}
	book.title = formEl.title.value
	book.description = formEl.description.value
	book.year = formEl.year.value

  if (book.title.length > 3) {
    addBook(book)
    formEl.reset()
  } else {
    alert('title is too short...')
  }
})

// get all books from the server
function getBooks() {
  return fetch('http://localhost:3000/books')
    .then((resp) => resp.json())
}

// delete a book from the server
const deleteBtn = t.body.querySelector('.delete-btn')
deleteBtn.addEventListener('click',
    function deleteBook (id) {
      return fetch(`http://localhost:3000/books/${id}`, {
        method: 'DELETE'
      })
})

getBooks()
	.then((books) => addBooks(books))
