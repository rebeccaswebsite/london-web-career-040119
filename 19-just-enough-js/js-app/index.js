console.log("Hi!")
const tbodyEl = document.querySelector('tbody')

function addBookFullHybrid (title, desc, year) {
	const trEl = document.createElement('tr')

    trEl.innerHTML = `
			<td>${title}</td>
			<td>${desc}</td>
			<td>${year}</td>
	`

	tbodyEl.append(trEl)
}


addBookFullHybrid('Nice 1', 'lalala', 123)
addBookFullHybrid('Nice 2', 'lalala', 123)
addBookFullHybrid('Nice 3', 'lalala', 123)
addBookFullHybrid('Nice 4', 'lalala', 123)
addBookFullHybrid('Nice 5', 'lalala', 123)
addBookFullHybrid('Nice 6', 'lalala', 123)