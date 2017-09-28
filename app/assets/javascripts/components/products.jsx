var Products = React.createClass({
  getInitialState: function() {
    return {
      products: this.props.products,
      order: this.props.order,
      orderItems: this.props.order_items,
      errors: {}
    }
  },

  handleButton: function(obj) {
    var product = obj;
    var order_item = {
      product_id: product.id,
      quantity: 1,
      order_id: this.state.order.id
    };
    $.post('/api/v1/order_items',
          {order_item: order_item}).done(function(data) {
              this.addNewOrderItem(data);
            }.bind(this));
  },

  addNewOrderItem: function(orderItem) {
    var orderItemsList = React.addons.update(this.state.orderItems, { $push: [orderItem]});
    this.setState({
     orderItems: orderItemsList
    });
  },

  render: function() {
    var productRows = [];
    var orderItemsRows = [];
    var lastProductType = null;
    this.state.products.forEach((product) => {
      if (product.product_type !== lastProductType) {
        productRows.push(<ProductTypeRow productType={product.product_type} key={product.product_type}/>)
      }
      productRows.push(<Product product={product} key={product.id} onButtonClick={this.handleButton} />)
      lastProductType = product.product_type
    })
    this.state.orderItems.forEach((orderItem) => {
      orderItemsRows.push(<OrderItem order={this.state.order} orderItem={orderItem} key={orderItem.id}/>)
    })

    return (
    <div>
      <div className="container">
        <div className="row">
          <div className="col-3">

          </div>
          <div className="col-6 text-center">
            <h3>The Original Pancake House</h3>
            <h3>Online Order Pickup Application</h3>
          </div>
          <div className="col-3">

          </div>
        </div>
      </div>
      <div className="container">
        <h3>All Cart Items</h3>
        {orderItemsRows}
      </div>
      <div className="container">
        <h3>All Products</h3>
        {productRows}
      </div>

    </div>
    )
  }
});
