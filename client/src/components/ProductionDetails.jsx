import React, { useEffect, useState } from 'react';
// import { useParams } from 'react-router-dom';


const ProductionDetails = () => {
	const [production, setProduction] = useState([]);
	// const id = useParams();

	const handleDelete = () => {
		fetch(`/productions/${production.id}`, {
			method: 'DELETE',
		}).then((res) => {
			if (res.ok) {
				res.json().then(console.log);
			} else {
				res.json().then(console.log);
			}
		});
	};

	useEffect(() => {
		fetch(`/productions/${production.id}`)
			.then((res) => res.json())
			.then(console.log);
	}, []);

	return (
		<div>
			<img src={production.image} alt="" />
			<h1>{production.title}</h1>
			<button onClick={handleDelete}></button>
			<p>{production.description}</p>
			<h2>{production.crew}</h2>
			{/* <ul>
				{production.crew_members.map((member) => (
					<li>{`${member.name} : ${member.job_title}`}</li>
				))}
			</ul> */}
		</div>
	);
};

export default ProductionDetails;
