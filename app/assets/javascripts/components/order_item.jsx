var OrderItem = React.createClass({
  getInitialState() {
    return {
      orderItem: this.props.orderItem,
      order: this.props.order
    }
  },

  handleDeleteButton() {
    var product =  this.state.product;
    this.props.onDeleteButtonClick(this.state.orderItem);
  },

  render: function() {
    return (
      <div className="row">
          <div className="col-10">
            <label>Order Item Id</label>
            <h4 className="menu-item-title">{this.state.orderItem.id}</h4>
          </div>
          <div className="col-2 text-right">
            <button onClick={this.handleDeleteButton} className='btn btn-sm btn-danger'>Remove</button>
          </div>

      </div>
    )
  }
});
