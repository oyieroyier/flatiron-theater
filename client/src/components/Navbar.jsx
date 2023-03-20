import React from 'react'
import { Link } from 'react-router-dom';
import Banner from './Banner';

const Navbar = () => {
	return (
		<nav>
			<h1>Productions</h1>
			<ul>
				<Banner/>
				<li>
					<Link to='/add'>Add</Link>
				</li>
			</ul>
		</nav>
	);
}

export default Navbar