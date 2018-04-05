import React from 'react';

export default class AdminHeader extends React.Component {

    render() {

        return (
            <div className="navbar navbar-default">
                <div className="navbar-header">
                    <button type="button" className="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-responsive-collapse">
                        <span className="icon-bar"></span>
                        <span className="icon-bar"></span>
                        <span className="icon-bar"></span>
                    </button>
                    <a className="navbar-brand" href="#">webCMS</a>
                </div>
                <div className="navbar-collapse collapse navbar-responsive-collapse">
                    <ul className="nav navbar-nav">
                        <li className="active"><a href="index.html">Dashboard</a></li>
                        <li><a href="pages.jsp">Pages</a></li>
                        <li><a href="categories.html">Posts</a></li>
                        <li><a href="users.jsp">Users</a></li>
                    </ul>
                    <form className="navbar-form navbar-left">
                        <input type="text" className="form-control col-lg-8" placeholder="Search"/>
                    </form>
                    <ul className="nav navbar-nav navbar-right">
                        <li className="dropdown">
                            <a href="#" className="dropdown-toggle" data-toggle="dropdown">My Account <b
                                className="caret"></b></a>
                            <ul className="dropdown-menu">
                                <li><a href="#">Profile</a></li>
                            </ul>
                        </li>
                        <li><a href="login.html">Login</a></li>
                    </ul>
                </div>
            </div>

        );
    }
}