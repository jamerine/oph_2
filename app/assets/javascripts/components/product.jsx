var Product = React.createClass({
  getInitialState() {
    return {
      product: this.props.product,
      order_item: {
        product_id: this.props.product.id,
        order_id: null,
        quantity: 1,
      }
    }
  },

  handleButton() {
    var product =  this.state.product;
    this.props.onButtonClick(this.props.product);
  },

  render: function() {
    return (
      <div className="row">
          <div className="col-10">
            <h4 className="menu-item-title">{this.state.product.name}</h4>
              <p className="menu-item-description">{this.state.product.short_description}</p>
          </div>
          <div className="col-2 text-right">
            <h4 className="menu-item-price">{this.state.product.price}</h4>
            <button onClick={this.handleButton} className='btn btn-sm btn-success'>Add</button>
          </div>

      </div>
    )
  }
});
