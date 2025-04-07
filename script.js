
const app = document.getElementById("app");

let lang = "id";
let translations = {
  id: { chooseLang: "Pilih Bahasa", next: "Lanjut" },
  en: { chooseLang: "Choose Language", next: "Next" },
  it: { chooseLang: "Scegli la lingua", next: "Avanti" }
};

function showLanguagePage() {
  const t = translations[lang];
  app.innerHTML = `
    <h1>${t.chooseLang}</h1>
    <select id="language">
      <option value="id">Indonesia</option>
      <option value="en">English</option>
      <option value="it">Italiano</option>
    </select>
    <br/>
    <button onclick="selectLanguage()">${t.next}</button>
  `;
}

function selectLanguage() {
  lang = document.getElementById("language").value;
  showNextPage();
}

function showNextPage() {
  const t = translations[lang];
  app.innerHTML = \`
    <h1>\${t.chooseLang}: \${lang.toUpperCase()}</h1>
    <p>Halaman berikutnya muncul di sini...</p>
    <button onclick="showLanguagePage()">Back</button>
  \`;
}

document.addEventListener("DOMContentLoaded", showLanguagePage);
