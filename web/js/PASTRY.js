let listProductHTML = document.querySelector('.listProduct');
let listCartHTML = document.querySelector('.listCart');
let iconCart = document.querySelector('.icon-cart');
let iconCartSpan = document.querySelector('.icon-cart span');
let body = document.querySelector('body');
let closeCart = document.querySelector('.close');
let products = [];
let cart = [];

// Toggle cart visibility
iconCart.addEventListener('click', () => {
    body.classList.toggle('showCart');
});
closeCart.addEventListener('click', () => {
    body.classList.toggle('showCart');
});

// Function to add products to HTML
const addDataToHTML = () => {
    listProductHTML.innerHTML = ''; // Clear existing product list

    if (products.length > 0) {
        products.forEach(product => {
            let newProduct = document.createElement('div');
            newProduct.dataset.id = product.id;
            newProduct.classList.add('item');
            newProduct.innerHTML =
                `<img src="${product.image}" alt="">
                <h2>${product.name}</h2>
                <div class="price">$${product.price}</div>
                <button class="addCart">Add to Cart</button>`;
            listProductHTML.appendChild(newProduct);
        });
    }
};

// Event listener for adding to cart
listProductHTML.addEventListener('click', (event) => {
    let clickedElement = event.target;
    if (clickedElement.classList.contains('addCart')) {
        let productId = clickedElement.parentElement.dataset.id;
        addToCart(productId);
    }
});

// Function to add item to cart
const addToCart = (productId) => {
    let cartItemIndex = cart.findIndex(item => item.product_id === productId);
    if (cartItemIndex === -1) {
        cart.push({ product_id: productId, quantity: 1 });
    } else {
        cart[cartItemIndex].quantity++;
    }
    updateCart();
};

// Update cart in memory (localStorage)
const updateCartInMemory = () => {
    localStorage.setItem('cart', JSON.stringify(cart));
};

// Update cart display in HTML
const updateCart = () => {
    listCartHTML.innerHTML = ''; // Clear existing cart items
    let totalQuantity = 0;
    let totalPrice = 0;

    cart.forEach(item => {
        let product = products.find(prod => prod.id === item.product_id);
        if (product) {
            let itemPrice = product.price * item.quantity;
            totalPrice += itemPrice;
            totalQuantity += item.quantity;

            let newItem = document.createElement('div');
            newItem.classList.add('item');
            newItem.dataset.id = item.product_id;
            newItem.innerHTML = `
                <div class="image">
                    <img src="${product.image}" alt="${product.name}">
                </div>
                <div class="name">${product.name}</div>
                <div class="totalPrice">$${itemPrice.toFixed(2)}</div>
                <div class="quantity">
                    <span class="minus">-</span>
                    <span>${item.quantity}</span>
                    <span class="plus">+</span>
                </div>`;
            listCartHTML.appendChild(newItem);
        }
    });

    iconCartSpan.textContent = totalQuantity;
    document.getElementById('totalPriceElement').textContent = $${totalPrice.toFixed(2)};
    updateCartInMemory();
};

// Event listener for changing quantity in cart
listCartHTML.addEventListener('click', (event) => {
    let clickedElement = event.target;
    if (clickedElement.classList.contains('minus') || clickedElement.classList.contains('plus')) {
        let productId = clickedElement.parentElement.parentElement.dataset.id;
        let type = clickedElement.classList.contains('plus') ? 'plus' : 'minus';
        changeCartQuantity(productId, type);
    }
});

// Function to change quantity in cart
const changeCartQuantity = (productId, type) => {
    let cartItemIndex = cart.findIndex(item => item.product_id === productId);
    if (cartItemIndex !== -1) {
        if (type === 'plus') {
            cart[cartItemIndex].quantity++;
        } else {
            if (cart[cartItemIndex].quantity > 1) {
                cart[cartItemIndex].quantity--;
            } else {
                cart.splice(cartItemIndex, 1);
            }
        }
        updateCart();
    }
};

// Clear the cart
const clearCart = () => {
    cart = [];
    updateCart();
};

// Event listener for clearing the cart
document.getElementById('clearCartIcon').addEventListener('click', clearCart);

// Initialize the application
const initApp = () => {
    // Fetch product data
    fetch('/WakeUp-CALL/PASTRY.json')
        .then(response => response.json())
        .then(data => {
            products = data;
            addDataToHTML();

            // Retrieve cart data from localStorage
            if (localStorage.getItem('cart')) {
                cart = JSON.parse(localStorage.getItem('cart'));
                updateCart();
            }
        });
};

// Initialize the application on page load
initApp();