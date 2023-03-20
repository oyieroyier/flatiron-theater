import React from 'react';

const Banner = () => {
	function handleClick() {
		fetch('/cookie_click')
			.then((res) => res.json())
			.then(console.log);
	}
	return (
		<div>
			<button onClick={handleClick}>Click</button>
		</div>
	);
};

export default Banner;
