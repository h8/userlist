export default function load() {
  let xhttp = new XMLHttpRequest();

  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
      let data = JSON.parse(this.responseText);

      render(data.users);
    }
  };

  xhttp.open("GET", "/api/users", true);
  xhttp.send();
}

function render(users) {
  let items = users.reduce(function(acc, user) {
    let li = !user.active? '<li class="blocked">' : '<li>';
    return acc + li + user.name + '</li>';
  }, "");

  let container = document.getElementById('user-container');
  container.innerHTML = '<ul>' + items + '</ul>';
}
