var Products = React.createClass({
  getInitialState: function() {
    return {
      products: this.props.products,
      order: this.props.order,
      orderItems: this.props.order_items,
      errors: {}
    }
  },

  findOrderItemsSum(orderItems) {
    var sum = 0;
    for (var i = 0; i < orderItems.length; i++) {
      sum += parseFloat(orderItems[i].total_price);
    }
    return sum;
  },

  handleAddOrderItem(orderItem) {
    var orderItemsList = React.addons.update(this.state.orderItems, { $push: [orderItem]});
    var order = this.state.order;
    order.subtotal = this.findOrderItemsSum(orderItemsList);
    this.setState({
     orderItems: orderItemsList,
     order: order
    });
  },

  handleDeleteButton: function(obj) {
    var orderItem = obj;
    var currentOrderItems = this.state.orderItems;
    $.ajax({
      url: `/api/v1/order_items/${orderItem.id}`,
      type: 'DELETE',
      success:() => {
        this.removeItemClient(orderItem.id);
      }
    });
  },

  removeItemClient(id) {
    var newOrderItems = this.state.orderItems.filter((orderItem) => {
      return orderItem.id != id;
    });
    var order = this.state.order;
    order.subtotal = this.findOrderItemsSum(newOrderItems);
    this.setState({
      orderItems: newOrderItems,
      order: order
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
      productRows.push(<Product product={product} order={this.state.order} key={product.id} handleAddOrderItem={this.handleAddOrderItem} />)
      lastProductType = product.product_type
    })
    this.state.orderItems.forEach((orderItem) => {
      orderItemsRows.push(<OrderItem order={this.state.order} orderItem={orderItem} key={orderItem.id} onDeleteButtonClick={this.handleDeleteButton}/>)
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
