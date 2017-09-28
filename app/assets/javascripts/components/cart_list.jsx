var CartList = React.createClass({
  render: function() {
    return(
      <div>
        {this.props.order_items.map(function(order_item) {
          return (
            <div>
              <p>{order_item.id}</p>
            </div>
          )
        })}
      </div>
    )
  }
});
