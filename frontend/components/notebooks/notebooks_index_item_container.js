import { connect } from 'react-redux';
import NotebooksIndexItem from './notebooks_index_item';
import { withRouter } from 'react-router-dom';

const mapStateToProps = state => {
  return {

  };
};

const mapDispatchToProps = dispatch => {
  return {};
};

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(NotebooksIndexItem));
