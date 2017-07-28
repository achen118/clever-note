import React from 'react';

class NewNotebook extends React.Component {

  componentDidMount() {
    if (this.state.title) {
      document.querySelector('.new-notebook-create').disabled = false;
    } else {
      document.querySelector('.new-notebook-create').disabled = true;
    }
  }

  constructor(props) {
    super(props);
    this.state = {
      title: ""
    };
    this.handleClick = this.handleClick.bind(this);
    this.update = this.update.bind(this);
  }

  handleClick(action) {
    return event => {
      if (action === 'cancel') {
        this.props.history.goBack();
      } else {
        this.props.addNotebook(this.state).then(() => this.props.history.push('/notebooks'));
      }
    };
  }

  update(event) {
    this.setState({
      title: event.currentTarget.value
    }, () => {
      if (this.state.title) {
        document.querySelector('.new-notebook-create').disabled = false;
      } else {
        document.querySelector('.new-notebook-create').disabled = true;
      }
    });
  }

  render() {
    return (
      <section className="new-notebook-container">
        <figure className="notebook-icon">
          <img src="https://res.cloudinary.com/malice/image/upload/v1500957249/notebook.png" alt="Notebook Icon" />
        </figure>
        <h3 className="new-notebook-header">Create Notebook</h3>
        <input
          type="text"
          className="new-notebook-input"
          placeholder="Title your notebook"
          value={ this.state.name }
          onChange={ this.update } />
        <section>
          <button
            className="new-notebook-cancel"
            onClick={ this.handleClick('cancel') }>
            Cancel
          </button>
          <button
            className="new-notebook-create"
            onClick={ this.handleClick('create') }>
            Create notebook
          </button>
        </section>
      </section>
    );
  }

}

export default NewNotebook;
