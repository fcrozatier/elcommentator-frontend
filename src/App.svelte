<script lang="ts">
  import Form from "./lib/form.svelte";
</script>

<main>
  <h1>El commentator</h1>

  <Form />
</main>

<style lang="scss">
  :root {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
      Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
  }

  main {
    background-color: #f5d80e;
    text-align: center;
    padding: 1em;
    margin: 0 auto;
  }

  h1 {
    color: #ff3e00;
    text-transform: uppercase;
    font-size: 4rem;
    font-weight: 100;
    line-height: 1;
    margin: 2rem auto;
  }
</style>
