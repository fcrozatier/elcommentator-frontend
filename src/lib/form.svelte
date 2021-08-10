<script lang="ts">
  import axios from "axios";

  let options = [""];

  let handleSubmit = (event) => {
    console.log("hey!");
    axios
      .get("/comment")
      .then((r) => {
        console.log(r.data);
      })
      .catch((err) => {
        console.log(err);
      });
  };
</script>

<form method="POST" on:submit|preventDefault={handleSubmit}>
  <label>
    Moyenne élève
    <input value="12" type="number" name="eleve" />
  </label>
  <label>
    Moyenne classe
    <input value="12" type="number" name="classe" />
  </label>
  <label>
    Min classe
    <input value="12" type="number" name="min" />
  </label>
  <label>
    Max classe
    <input value="12" type="number" name="max" />
  </label>
  <button> Générer </button>
</form>

<style>
</style>
