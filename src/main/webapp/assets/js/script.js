// Modules
try {
    const usersListWrapper = document.querySelector('.panel__inner')
    const names = document.querySelectorAll('[data-filter="name"]')
    const input = userNamesFilterInput;

    input.addEventListener('input', event => {
        names.forEach(name => {
            // Trim and LowerCase used to allow us to make searching not even strict
            let searchingElement = String(event.target.value.trim().toLowerCase())
            let searchingTarget = name.innerHTML.trim().toLowerCase()

            // Going from parent cell to parent column | double parentNode
            let ourBlockToDisplayAndHide = name.parentNode.parentElement
            
            // Blocked RegExp lovers)))
            if (searchingElement.indexOf("\\") !== -1) {
                searchingElement = undefined
            }

            // Using search method to find substring in string
            let substringInString = searchingTarget.search(searchingElement)

            if (( substringInString !== -1) && searchingElement !== undefined) {
                ourBlockToDisplayAndHide.style.display = "flex"
            } else {
                ourBlockToDisplayAndHide.style.display = "none"
            }
        })    
    })
} catch (e) {
}

// // WEBP format 

function testWebP(callback) {

	var webP = new Image()
	webP.onload = webP.onerror = function () {
		callback(webP.height == 2)
	}
	webP.src = "data:image/webp;base64,UklGRjoAAABXRUJQVlA4IC4AAACyAgCdASoCAAIALmk0mk0iIiIiIgBoSygABc6WWgAA/veff/0PP8bA//LwYAAA";
};