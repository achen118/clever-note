import React from 'react';
import { withRouter, Link, Redirect } from 'react-router-dom';

class SessionForm extends React.Component {

  componentWillReceiveProps(nextProps) {
    if (this.props.location.pathname !== nextProps.location.pathname) {
      this.props.clearErrors();
    }
  }

  constructor(props) {
    super(props);
    this.state = {
      userCredential: "",
      password: ""
    };
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
  }

  update(key) {
    return event => this.setState({ [key]: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.processForm(this.state);
  }

  handleDemo(event) {
    event.preventDefault();
    this.props.signin({
      userCredential: "demo@appacademy.io",
      password: "password"
    });
  }

  render() {
    const { formType, loggedIn, errors } = this.props;
    return (
      <div className="session-page">
        <section className="session-form">
          <header className="session-page-header">
            <figure>
              <img src='https://www.evernote.com/redesign/global/img/elephant.png' alt='CleverNote Logo' />
            </figure>
            <h1 className="header-name">CLEVERNOTE</h1>
            <h3 className="tagline">Create and organize your notes with notebooks and tags that you can access from anywhere...</h3>
          </header>
          <form onSubmit={ this.handleSubmit }>
            <h1 className="session-title">
              { formType === 'signup' ? 'Create Account' : 'Sign in' }
            </h1>
            <br />
            <ul className="errors">
              { errors.map((error, idx) => <li key={ idx }>{ error }</li>) }
            </ul>
              <input
                type="text"
                onChange={ this.update('userCredential') }
                value={ this.state.userCredential }
                placeholder={ formType === 'signup' ?
                  "Your email address" :
                  "Email address or username"
                }
              />
            <br />
            <input
              type="password"
              onChange={ this.update('password') }
              value={ this.state.password }
              placeholder={ formType === 'signup' ?
                "Create a password" :
                "Password"
              }
            />
            <br />
            <button>
              { formType === 'signup' ? 'Create Account' : 'Sign in' }
            </button>
            <button onClick={ this.handleDemo }>
              Demo
            </button>
          </form>
          <section className="session-links">
            { formType === 'signup' ?
              <div>
                <p className="already-have-account">Already have an account?</p>
                <br />
                <Link to='/signin' className="session-link">Sign in</Link>
              </div> :
              <div>
                <p className="already-have-account">Don't have an account?</p>
                <br />
                <Link to='/signup' className="session-link">Create account</Link>
              </div>
            }
          </section>
        </section>
      </div>
    );
  }
}

export default withRouter(SessionForm);
