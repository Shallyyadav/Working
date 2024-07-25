// Define a global variable to store the cart items
var cart = [];

function addToCartClicked(event) {
    var button = event.target;
    var shopItem = button.parentElement.parentElement;
    var title = shopItem.querySelector('.shop-item-title').innerText;
    var price = parseFloat(shopItem.querySelector('.shop-item-price').innerText.replace('Rs ', ''));
    var imageSrc = shopItem.querySelector('.shop-item-image').src;
    
    // Add the product details to the cart array
    var foundItem = cart.find(item => item.title === title);
    if (foundItem) {
        foundItem.quantity += 1;
    } else {
        cart.push({ title, price, imageSrc, quantity: 1 });
    }

    // Update the order summary display
    updateOrderSummary();
    
    // Update the cart total and save to local storage
    updateCartTotal();
}

function updateOrderSummary() {
    var cartItemsContainer = document.querySelector('.cart-items');
    cartItemsContainer.innerHTML = ''; // Clear the previous content
    
    cart.forEach(function(item) {
        var cartRow = document.createElement('tr');
        var cartRowContents = `
            <td class="cart-item cart-column">
                <img class="cart-item-image" src="${item.imageSrc}" width="50" height="50">
                <span class="cart-item-title">${item.title}</span>
            </td>
            <td class="cart-price cart-column">Rs ${item.price}</td>
            <td class="cart-quantity cart-column">${item.quantity}</td>
            <td class="cart-total cart-column">Rs ${item.price * item.quantity}</td>
        `;
        cartRow.innerHTML = cartRowContents;
        cartItemsContainer.appendChild(cartRow);
    });
}

// Other functions like removeCartItem, updateCartTotal, etc. remain the same



