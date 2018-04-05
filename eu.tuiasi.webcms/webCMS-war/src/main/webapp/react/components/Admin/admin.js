const React = require('react');
const ReactDOM = require('react-dom');
import client from '../../client';
import layout from './layout';




class User extends React.Component{
      render() {

          return (
            <tr>
                <td>{this.props.user.firstname}</td>
                <td>{this.props.user.lastname}</td>
                <td>{this.props.user.email}</td>
                <td>{this.props.user.dob}</td>
                <td>{this.props.user.createdAt}</td>
         
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
          <User user={user} key={user.email} />);
      });
    
    return (
      <table className="table table-striped">
          <thead>
              <tr>
                  <th>FirstName</th>
                  <th>LastName</th>
                  <th>Email</th>
                  <th>Date of birth</th>
                  <th>CreatedAt</th>
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
        client({method: 'GET', path: 'http://localhost:8180/webCMS/api/userDatas'}).done(response => {
            this.setState({users:response.entity._embedded.userDatas});
        });
        
    }
    render() {

      return (
          <layout>
          <UserTable users={this.state.users} />
          </layout>
      );
    }
  }


ReactDOM.render(<Admin />, document.getElementById('users') );

