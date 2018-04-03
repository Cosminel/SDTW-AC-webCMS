const React = require('react');
const ReactDOM = require('react-dom');
import client from '../../client';




class User extends React.Component{
      render() {

          return (
            <tr>
                <td>{this.props.user.username}</td>
                <td>{this.props.user.password}</td>
         
                <td>
                  <button className="btn btn-info" onClick={this.handleDelete}>Delete</button>
                </td>
            </tr>
          );
        }
}

class UserTable extends React.Component{

  render() {
      var rows = [];
      this.props.users.forEach(function(user) {
        rows.push(
          <User user={user} key={user.id} />);
      });
    
    return (
      <table className="table table-striped">
          <thead>
              <tr>
                  <th>username</th>
                  <th>password</th>
              </tr>
          </thead>
          <tbody>{rows}</tbody>
      </table>
    );
  }
}

class Admin extends React.Component{

    constructor(props){
        super(props);
        this.state = {users:[]};
    }
    componentDidMount(){
        client({method: 'GET', path: 'http://localhost:8080/webCMS-web/api/users'}).done(response => {
            this.setState({users:response.entity._embedded.users});
        });
        
      /*   var self = this;
        $.ajax({
            url: "http://localhost:8080/webCMS-web/api/users",
            type: "GET"
          }).then(function(data) {
            self.setState({ users: data._embedded.users});
          });*/
      
    }
    render() {
        console.log(this.state.users);
      return ( <UserTable users={this.state.users} /> );
    }
  }


ReactDOM.render(<Admin />, document.getElementById('users') );

