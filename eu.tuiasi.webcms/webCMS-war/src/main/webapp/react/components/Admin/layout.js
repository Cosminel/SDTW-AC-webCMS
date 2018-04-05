const React = require('react');
import Header from './adminHeader';
import Footer from './adminFooter';

export default class Layout extends React.Component {
    render() {
        return (
            <div>
                <Header/>

                <Footer/>
            </div>
        );
    }
}