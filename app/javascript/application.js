// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener("turbo:load", () => {
  document.querySelectorAll('[data-status]').forEach(button => {
    button.addEventListener('click', () => {
      const status = button.getAttribute('data-status');
      const input = document.getElementById('statusInput');
      if (input) input.value = status;
      const modal = bootstrap.Modal.getInstance(document.getElementById('statusModal'));
      modal.hide();
    });
  });
});


