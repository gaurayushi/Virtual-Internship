const fileUpload = document.getElementById('fileUpload');
const gallery = document.getElementById('gallery');

fileUpload.addEventListener('change', function () {
        
  gallery.innerHTML = '';

  const files = this.files;

  for (let i = 0; i < files.length; i++) {
    const file = files[i];

    if (file.type.startsWith('image/')) {
      const reader = new FileReader();

      reader.onload = function (e) {
        const img = document.createElement('img');
        img.src = e.target.result;
        img.classList.add('image');
        gallery.appendChild(img);
      };

      reader.readAsDataURL(file);
    }
  }
});
