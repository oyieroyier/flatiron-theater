import React, { useState } from 'react';

const Form = () => {
	const [title, setTitle] = useState('');
	const [genre, setGenre] = useState('');
	const [budget, setBudget] = useState('');
	const [image, setImage] = useState('');
	const [director, setDirector] = useState('');
	const [description, setDescription] = useState('');

	const onSubmit = (e) => {
		e.preventDefault();

		const production = {
			title,
			genre,
			budget,
			image,
			director,
			description,
		};

		fetch('/productions', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(production),
		}).then((res) => {
			if (res.ok) {
				res.json();
			} else {
				res.json().then()
			}
		});
	};

	return (
		<form id="form" className="form" onSubmit={onSubmit}>
			<label>Title</label>
			<input
				type="text"
				value={title}
				onChange={(e) => setTitle(e.target.value)}
			/>
			<label>Genre</label>
			<input
				type="text"
				value={genre}
				onChange={(e) => setGenre(e.target.value)}
			/>
			<label>Budget</label>
			<input
				type="text"
				value={budget}
				onChange={(e) => setBudget(e.target.value)}
			/>
			<label>Image</label>
			<input
				type="text"
				value={image}
				onChange={(e) => setImage(e.target.value)}
			/>
			<label>Director</label>
			<input
				type="text"
				value={director}
				onChange={(e) => setDirector(e.target.value)}
			/>
			<label>Description</label>
			<input
				type="text"
				value={description}
				onChange={(e) => setDescription(e.target.value)}
			/>
			<button type="submit">Add New Production</button>
		</form>
	);
};

export default Form;
