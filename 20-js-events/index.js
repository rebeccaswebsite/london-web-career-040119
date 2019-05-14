const tbody = document.querySelector('tbody')
const formEl = document.querySelector('#new-book-form')

function addBook (title, desc, year) {
  const tr = document.createElement('tr')
  
  tr.innerHTML = `
    <td>${title}</td>
    <td>${desc}</td>
    <td>${year}</td>
    <td><button class='delete-btn'>X</button></td>
  `
  tbody.append(tr)

  const deleteBtn = tr.querySelector('.delete-btn')
  deleteBtn.addEventListener('click', function (event) {
    tr.remove()
  })

}

addBook('HP', 'first book', 1990)
addBook('HP2', 'second book', 1992)
addBook('HP3', 'third book', 1994)
addBook('LoTR', 'long book', 1954)


formEl.addEventListener('submit', function(event) {
	event.preventDefault()

	let title = formEl.title.value
	const desc = formEl.desc.value
	const year = formEl.year.value

  if (title.length > 3) {
    addBook(title, desc, year)
    formEl.reset()
  } else {
    alert('title is too short...')
  }
})
