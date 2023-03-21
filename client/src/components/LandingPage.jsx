import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import Navbar from './Navbar';

const LandingPage = ({productions}) => {

	return (
		<main>
			<Navbar />
			<div className="card-container">
				{productions.map((production) => (
					<div className="card" key={production.id}>
						<div className="card-top">
							<h2>{production.title}</h2>
							{/* <button onClick={handleDelete}>X</button> */}
						</div>
						<Link to={`/productions/${production.id}`}>
							<img src={production.image} alt="" />
							<p>Genre: {production.genre}</p>
						</Link>
						<p>{production.description}</p>
					</div>
				))}
			</div>
		</main>
	);
};

export default LandingPage;
