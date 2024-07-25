
const search=()=>{
     const searchbox=document.getElementById("search-item").value.toUpperCase();
     const storeitems=document.getElementById("product-list")
     const product=document.querySelectorAll(".product")
     const pname=storeitems.getElementsByTagName("h2")

     for(var i = 0; i < pname.length;i++){
         let match = product[i].getElementsByTagName('h2')[0];
         if(match){
             let textvalue = match.textContent || match.innerHTML
             if(textvalue.toUpperCase().indexOf(searchbox) > -1){
                 product[i].style.display = "";
             }else{
                 product[i].style.display = "none";
             }
         }
     }
}


/* Shopping Cart Section */
document.addEventListener('DOMContentLoaded', () => {
    console.log('Document is ready');
    
    var cartItemsContainer = document.querySelector('.cart-items');
    cartItemsContainer.addEventListener('click', function(event) {
        if (event.target && event.target.classList.contains('btn-danger')) {
            console.log('Remove button clicked');
            removeCartItem(event);
        }
    });

    var addToCartButtons = document.querySelectorAll('.shop-item-button');
    addToCartButtons.forEach(function(button) {
        button.addEventListener('click', addToCartClicked);
    });

    document.querySelector('.btn-purchase').addEventListener('click', purchaseClicked);

    // Load cart items from local storage
    var cart = getCart();
    console.log('Retrieved cart from local storage:', cart);
    cart.forEach(function(item) {
        addItemToCart(item.title, item.price, item.imageSrc, item.quantity);
    });

    updateCartTotal();
});

function getCart() {
    var cart = localStorage.getItem('cart');
    return cart ? JSON.parse(cart) : [];
}

function saveCart(cart) {
    localStorage.setItem('cart', JSON.stringify(cart));
}

function purchaseClicked(){  
    // Clear cart items from visual representation
    var cartItems = document.querySelector('.cart-items');
    
    // Check if the cart is empty
    var cart = getCart();
    if (cart.length === 0) {
        alert("The cart is empty!");
        return false;
    }

    // Remove cart items from visual representation
    cartItems.innerHTML = '';
    
    // Clear cart data from local storage
    localStorage.removeItem('cart');
    window.location.href="payment.html";
    // Update cart total
    updateCartTotal();
    
}


function removeCartItem(event){
    var buttonClicked = event.target;
    var cartItem = buttonClicked.parentElement.parentElement;
    var title = cartItem.querySelector('.cart-item-title').innerText;
    cartItem.remove();
    updateCartTotal();

    // Update local storage
    var cart = getCart();
    var updatedCart = cart.filter(function(item) {
        return item.title !== title;
    });
    saveCart(updatedCart);
}

function addToCartClicked(event){
    var button = event.target;
    var shopItem = button.parentElement.parentElement;
    var title = shopItem.querySelector('.shop-item-title').innerText;
    var price = parseFloat(shopItem.querySelector('.shop-item-price').innerText.replace('Rs ', ''));
    var imageSrc = shopItem.querySelector('.shop-item-image').src;
    
    // Update local storage
    var cart = getCart();
    var foundItem = cart.find(item => item.title === title);
    if (foundItem) {
        foundItem.quantity += 1;
        saveCart(cart);
        updateCartTotal();
        return; // Exit function to prevent further execution
    }
    
    cart.push({ title, price, imageSrc, quantity: 1 });
    saveCart(cart);
    
    addItemToCart(title, price, imageSrc, 1);
    updateCartTotal();
    
}

function addItemToCart(title, price, imageSrc, quantity){
    var cartItems = document.querySelector('.cart-items');
    
    // Check if the item is already in the cart
    var existingCartItem = cartItems.querySelector('.cart-item[data-title="' + title + '"]');


    // If the item already exists, update its quantity and exit
    if (existingCartItem) {
        var quantityElement = existingCartItem.querySelector('.cart-quantity-input');
        var newQuantity = parseInt(quantityElement.value) + quantity;
        quantityElement.value = newQuantity;
        updateCartQuantity(title, newQuantity); // Update quantity in cart items
        updateCartTotal(); // Update total price
        return;
    }

    // If the item is not in the cart, create a new cart row
    var cartRow = document.createElement('tr');
    cartRow.classList.add('cart-row');
    cartRow.dataset.title = title; // Set data-title attribute to identify item

    var cartRowContents = `
        <td class="cart-item cart-column">
            <img class="cart-item-image" src="${imageSrc}" width="50" height="50">
            <span class="cart-item-title">${title}</span>                  
        </td>
        <td class="cart-price cart-column">Rs ${price}</td>
        <td class="cart-quantity cart-column">
            <input class="cart-quantity-input" type="number" value="${quantity}" style="width: 50px">
            <button class="btn btn-danger" type="button">Remove</button>
        </td>        
    `;
    cartRow.innerHTML = cartRowContents;
    cartItems.appendChild(cartRow);

    // Add event listeners
    cartRow.querySelector('.btn-danger').addEventListener('click', function(event) {
        console.log('Remove button clicked');
        removeCartItem(event);
    });
    cartRow.querySelector('.cart-quantity-input').addEventListener('change', function(event) {
        console.log('Quantity changed');
        quantityChanged(event);
    });
}

function updateCartTotal(){
    var cartRows = document.querySelectorAll('.cart-row');
    var total = 0;
    cartRows.forEach(function(row) {
        var priceElement = row.querySelector('.cart-price');
        var quantityElement = row.querySelector('.cart-quantity-input');
        var price = parseFloat(priceElement.innerText.replace('Rs ', ''));
        var quantity = parseInt(quantityElement.value);
        console.log("Price:", price, "Quantity:", quantity); // Add this line for debugging
        if (!isNaN(price) && !isNaN(quantity)) {
            total += price * quantity;
        }
    });
    console.log("Total before rounding:", total); // Add this line for debugging
    total = Math.round(total * 100 ) / 100;
    console.log("Total after rounding:", total); // Add this line for debugging
    document.querySelector('.cart-total-price').innerText = 'Rs '+ total.toFixed(2);
}

function quantityChanged(event){
    var input = event.target;
    var cartItem = input.parentElement.parentElement;
    var title = cartItem.querySelector('.cart-item-title').innerText;
    var quantity = parseInt(input.value);
    if(isNaN(quantity) || quantity <= 0){
        quantity = 1;
        input.value = 1;
    }
    updateCartQuantity(title, quantity); // Update quantity in cart items
    updateCartTotal(); // Update total price
}

function updateCartQuantity(title, quantity) {
    var cart = getCart();
    cart.forEach(function(item) {
        if (item.title === title) {
            item.quantity = quantity;
        }
    });
    saveCart(cart);
}