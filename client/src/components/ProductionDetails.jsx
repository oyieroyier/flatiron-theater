import React, { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router';
import { Link } from 'react-router-dom';

const ProductionDetails = () => {
	const [production, setProduction] = useState('');

	const { id } = useParams();
	const navigate = useNavigate();

	const handleDelete = () => {
		fetch(`/productions/${id}`, {
			method: 'DELETE',
		}).then((res) => {
			if (res.ok) {
				res.json().then(setProduction(null));
				navigate('/');
			} else {
				res.json().then(console.log);
			}
		});
	};

	useEffect(() => {
		fetch(`/productions/${id}`)
			.then((res) => res.json())
			.then(setProduction);
	}, []);

	return (
		<div className="details-card">
			<h1>{production.title}</h1>
			<img src={production.image} alt="" />
			<h2>Production Budget: USD {production.budget}</h2>
			<p>{production.description}</p>
			<div className="buttons">
				<Link to="/updateProduction">
					<button>EDIT</button>
				</Link>
				<button onClick={handleDelete}>DELETE</button>
			</div>
			{/* <ul>
				{production.crew_members.map((member) => (
					<li>{`${member.name} : ${member.job_title}`}</li>
				))}
			</ul> */}
		</div>
	);
};

export default ProductionDetails;
