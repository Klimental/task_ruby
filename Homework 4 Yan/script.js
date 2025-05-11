document.getElementById('personalInfoForm').addEventListener('submit', function(event) {
    event.preventDefault();

    let isValid = true;

    // Clear previous errors
    document.getElementById('nameError').textContent = '';
    document.getElementById('emailError').textContent = '';
    document.getElementById('ageError').textContent = '';

    // Get values
    const name = document.getElementById('name').value.trim();
    const email = document.getElementById('email').value.trim();
    const age = document.getElementById('age').value.trim();

    // Validate Name
    if (!name) {
        document.getElementById('nameError').textContent = 'Name is required.';
        isValid = false;
    }

    // Validate Email
    if (!email.includes('@')) {
        document.getElementById('emailError').textContent = 'Email must contain @.';
        isValid = false;
    }

    // Validate Age
    if (!age || isNaN(age) || Number(age) <= 0) {
        document.getElementById('ageError').textContent = 'Age must be a number greater than 0.';
        isValid = false;
    }

    // If valid
    if (isValid) {
        alert('Form submitted!');
        // optionally: this.submit();
    }
});
