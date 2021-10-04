import React, { Component } from 'react';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { selectFlat } from '../actions';

class Flat extends Component {
  handleClick = () => {
    this.props.selectFlat(this.props.flat)
  }

  render() {
    const style = {
      backgroundImage: `linear-gradient(rgba(0,0,0,0.3),
      rgba(0,0,0,0.2)),
      url('${this.props.flat.imageUrl}')`
    }

    let classes = "card";
    if (this.props.flat === this.props.selectedFlat) {
      classes += " selected"
    }

    return (
      <div className={classes} style={style} onClick={this.handleClick}>
        <div className="card-category">{this.props.flat.price}{this.props.flat.currency}</div>
        <div className="card-description">
          <h2>{this.props.flat.name}</h2>
        </div>
        <a className="card-link" href="#"></a>
      </div>
    );
  }
}


function mapDispatchToProps(dispatch) {
  return bindActionCreators(
    { selectFlat },
    dispatch
  );
}

function mapReduxStateToProps(reduxState) {
  return {
    selectedFlat: reduxState.selectedFlat
  };
}

export default connect(mapReduxStateToProps, mapDispatchToProps)(Flat);
