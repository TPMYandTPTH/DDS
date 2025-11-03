document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('current-year').textContent = new Date().getFullYear();
    
    const fileInput = document.getElementById('file');
    const fileName = document.getElementById('file-name');
    
    fileInput.addEventListener('change', function() {
        if (fileInput.files.length > 0) {
            fileName.textContent = fileInput.files[0].name;
        } else {
            fileName.textContent = 'Choose a file...';
        }
    });
});
