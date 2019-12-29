var	app	= new Vue({
	el: '#app',
	data: {
		cart : { quantity: 0 },
		page : { title: 'MyStore' },
		prod: {
			name: 'Socks',
			url: 'http://www.theguardian.co.uk/',
			inv: 100,
			instock: function(){ return this.inv > 0; },
			sale: false,
			brand: 'Unisox',
			details: ['unisex', '100% cotton'],
			types: [
				{id: 1314, color: 'red', img: 'assets/red.png'},
				{id: 515, color: 'blue', img: 'assets/blue.png'}],
			img: 'assets/red.png'
		}
	},
	methods: {
		addToCart: function(){ this.cart.quantity++; },
		updateProduct: function(t){ this.prod.img=t.img; }
	},
	computed: {
		title: function() { return this.prod.brand + ' ' + this.prod.name; }
	}
});
