function setupNavEvents() {
  const hamburger = document.getElementById('hamburger');
  const navbar = document.getElementById('navbar');
  if (!hamburger || !navbar) return;                                                                              
  navbar.classList.remove('active');
  hamburger.onclick = () => {
    navbar.classList.toggle('active');
  };
  const navLinks = navbar.querySelectorAll('a');
  navLinks.forEach(link => {
    link.onclick = () => {
      navbar.classList.remove('active');
    };
  });
}

document.addEventListener('turbo:load', setupNavEvents);


