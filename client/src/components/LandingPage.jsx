import React, { useEffect, useState } from 'react';
import Navbar from './Navbar';

const LandingPage = () => {
	const [productions, setProductions] = useState([]);

	useEffect(() => {
		fetch('/productions')
			.then((res) => res.json())
			.then(setProductions);
	}, []);

	return (
		<main>
			<Navbar/>
			<div className="card-container">
				{productions.map((production) => (
					<div className="card" key={production.id}>
						<h2>{production.title}</h2>
						<img src={production.image} alt="" />
						<p>Genre: {production.genre}</p>
					</div>
				))}
			</div>
		</main>
	);
};

export default LandingPage;
