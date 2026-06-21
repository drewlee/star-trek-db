// Used to seed episode descriptions from IMDB
const data = [];
document.querySelectorAll('div.ipc-title__text').forEach((el, i) => {
  data[i] = {name: el.textContent};
});
document.querySelectorAll('.ipc-html-content-inner-div').forEach((el, i) => data[i].desc = el.textContent);
let out = '';
data.forEach(({ name, desc }) => {
  out += `## ${name}\n\n`;
  out += `${desc}\n\n`;
});
console.log(out);
