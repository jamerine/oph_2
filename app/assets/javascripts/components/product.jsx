var Product = React.createClass({
  getInitialState() {
    return {
      product: this.props.product,
      order: this.props.order,
      orderItem: {
        product_id: this.props.product.id,
        order_id: this.props.order.id,
        quantity: 1,
      }
    }
  },

  handleClick() {
    var product =  this.state.product;
    var orderItem = this.state.orderItem
    $.ajax({
      url: `/api/v1/order_items`,
      type: 'POST',
      data: { order_item: orderItem },
      success: ( orderItem ) => {
        this.props.handleAddOrderItem(orderItem);
      }
    });
  },

  // handleAddButton() {
  //   var product =  this.state.product;
  //   this.props.onButtonClick(this.props.product);
  // },

  render: function() {
    return (
      <div className="row">
          <div className="col-10">
            <h4 className="menu-item-title">{this.state.product.name}</h4>
              <p className="menu-item-description">{this.state.product.short_description}</p>
          </div>
          <div className="col-2 text-right">
            <h4 className="menu-item-price">{this.state.product.price}</h4>
            <button onClick={this.handleClick} className='btn btn-sm btn-success'>Add</button>
          </div>

      </div>
    )
  }
});
